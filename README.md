# StereoGene

v1.62.1, 5 Mar 2016

StereoGene is a tool for calculating the kerneled correlation between two numeric annotations of the genome. The kernel represents the mutual position of related features. StereoGene allows counting of correlation not only for single features, but also for their combinations.

## Installation

Run in the `src/` directory:

```
make
```

Following the compilation process the executable `StereoGene` will be created.

## Input files

1. **Track files**: BED, WIG, BedGraph, BroadPeak. Program parameters are taken from config file, some parameters can be listed in the command line. 
2. **File list**: list of input files.
3. **Model**: linear combination of profiles.

## Data processing

StereoGene processes the data in two passes. During the first one – the preparation phase – it converts the input track into own binary format. The second step – the analysis – does comparison of the tracks. The preprocessed track can be used in many comparisons.

### Preparation phase

The binary profile contains two files:

| Extension | Description     |
| --------- | --------------- |
| .bprof    | the binary data |
| .prm      | text file with additional supporting data (important for data decoding) |

### Analysis phase

When comparing two tracks, StereoGene calculates the kerneled correlation in pairs of windows of given size (parameter `wSize`, usually `wSize=10000..1000000`). On the first step the program selects random independent windows in two profiles and produces a background distribution of correlation. Then the program analyses a coherent pairs with the sliding window and calculates the correlation (Foreground distribution). Statistical significance is calculated using Mann-Whitney test. 

The program produces following files (depending on selected output parameters):

| Extension | Description |
| --------- | ----------- |
| .bkg      | Background distribution for correlation function (permuted frames) |
| .fg       | Foreground distribution for correlation function (real frames) |
| .bkg      | The background distribution of genome distances between the profiles |
| .fg       | The Foreground distribution of genome distances between the profiles |
| .dist     | Distance distributions (correlation function) |
| .bpeak    | File in BroadPeak format, that contains significant frames. `pVal` and `qVal` are thresholds |
| .wig      | Standard wig-file with local correlations |
| .r        | R script for visualization of the results |
| .spect    | Average spectrum density |
| .chrom    | Statistics for chromosomes – average input signal values for the tracks and average window correlation |
| statistics |  Summary file with the results. For each run it contains: the names of the source files, the name for the resulting file, the parameters of the Mann-Whitney statistics (p-value and q-value) |
| parameters |  Summary file with the parameters of runs. Correspondence with the statistics is established using id |
