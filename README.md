# StereoGene

v1.62, 29 Feb 2016

StereoGene is a tool for calculating the kerneled correlation between two numeric annotations of the genome. The kernel represents the mutual position of related features. StereoGene allows counting of correlation not only for single features, but also for their combinations.

## Input files

Input of the StereoGene program are files in one of standard Genome Browser formats: BED, WIG, BedGraph, BroadPeak. Program parameters are taken from config file, some parameters can be listed in the command line. 

## Data processing

StereoGene processes the data in two passes. During the first one – the preparation phase – it converts the input track into own binary format. The second step – the analysis – does comparison of the tracks. The preprocessed track can be used in many comparisons.



