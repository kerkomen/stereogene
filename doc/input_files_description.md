# Input files

## Initial data (tracks)

There are three ways to provide tracks to StereoGene:

1. track files,
2. file list,
3. model file.

StereoGene will compare every track with every track. Tracks from the same list are not subject for comparison. If more than two input files are defined, the program will work with all the pairs of tracks.

### Track files

The format of the input files is defined by the file name extension automatically. If the track definition line in the track file exists the type of the track will be defined using this information.

Valid extensions and their interpretation (case-insensitive):


| Definition                           | Format              |
| ------------------------------------ | ------------------- |
| BED                                  | [BED](https://genome.ucsc.edu/FAQ/FAQformat.html#format1)                 |
| WIG                                  | [WIG](https://genome.ucsc.edu/goldenPath/help/wiggle.html)                 |
| BEDGRAPH, BED_GRAPH, B_GRAPH, BGR    | [BedGraph](https://genome.ucsc.edu/goldenPath/help/bedgraph.html)            |
| BROADPEAK, BROAD_PEAK, B_PEAK, BPEAK | [ENCODE BroadPeak](https://genome.ucsc.edu/FAQ/FAQformat.html#format13)    |

The initial data can be interval (e.g., genes) or functional (e.g., the coverage level). For interval data the parameter `-intervals` can be defined. If this parameter is defined the program will ignore the score field in the *bed* or *bedgraph* tracks and the score value will be set to `1`. Otherwise the data from the score field will be used.

StereoGene can take up to 256 input files and calculate the correlation for every pair of the tracks.

### File list

The list should have `.LIST` or `.LST` extension. Every line of the list file should contain the file name of a track file.

### Model

StereoGene can take not only a single track file but a linear combination of the tracks – a *model*. The model is defined in a model file. Each line of the model file corresponds to a primary track and contains the coefficient of the track in the linear model, for example:

```
-1 * B_G.H3K4me1.wig
-1 * B_G.H3K4me1.x.wig
 2 * B_G.H3K4me3.wig
```


## Mapping profile

## Partial correlation profile

## Aliases

The file contains aliases for brief track names, one alias per line. The format is the following: `Old_name=New_name`. Example:

```
Adult_Liver=AL
Brain_Germinal_Matrix=BGM
```






