### Version 1.62.1
1. Changed compilation options. Now compiles on OS X (10.10 Yosemite).

### Version 1.62
1. Fixed bug with chromosome file -- number of chromosomes can exceed 300.  

### Version 1.61
1. NA values are used only for WIG tracks; for the BED and other tracks types the program treats NA as 0 always regardless '-na' parameter definition.  
2. Chromosome names became case-insensitive
3. When an unknown chromosome appears the warning message is written to stderr and to the log file.

### Version 1.60
1. Introduced a parameter minShuffle - minimal number of shuffles
2. File statistics and statistics.xml get new parameters nFg = number of observations: nBkg = actual number of shuffles.

### Version 1.59
1. Fixed some bugs with opening files
2. Some default values changed (maxNA=95, maxZero=95)
3. The shuffling procedure corrected 

### Version 1.58
1. Program do not use default cfg file. If cfg file is used it should be defined explicitly in command line: cgf=<fname>
2. Program can use two equivalent arguments notation: param=value and -param value
3. File with Chromosomes can be defined in env variable SG_CHROM
4. ErrorExit on unknown parameter or incorrect value
5. new flag -clear. It forces profile recalculation.
6. flag -h introduced. It shows a help page
7. lock-unlock for cumulative files (not for windows distributions)
8. flag silent introduced. Even if 'verbose' is OFF the main results are printed to stdout. If silent is ON no output expected.
9. New system of parameters parsing introduced (testing needed!)

### Version 1.57
1. Program reads cfg from program directory, then from current working directory, then from args
2. Program creates necessary directories
3. Program parse tilda at the beginning of filename
4. Program allows spaces in filenames / directory names  

### Version 1.56
1. Fixed bug in read chromosomes

### Version 1.55
1. Fixed bud with loss of the last chromosom
2. Allowed a blank lines in chrom length file

### Version 1.54
1. Makefile. If you have problems with ccvars, replace it with ccvars.simple

### Version 1.53
1. Changed scale in outWIG

### Version 1.52
1. Fixed bug in auto-correlation function

### Version 1.51
1. Fixed bug in local correlation wig-file 
2. Local correlation wig file uses log scale 

### Version 1.50
1. A new parameter introduced: kernelNS. This is percent for reducing kernel values in the interval [-100..+100]bp: newVal=oldVal*(1-kernelNS/100).
2. A new out-file statistics.xml.  

### Version 1.48
1. Fixed bug in trackPrepare (read wig-files). The previous versions write a parasite data to the profile. As result a periodic small peaks appears.

### Version 1.47
1. Now the program analyses modification time of track and profile. If the track file has more resent time than a profile file the preparation stage will be done.
2. The NA flag is used on preparation step

### Version 1.46
1. in the cfg-file the boolean Flags now can be defined as YES/NO or ON/OFF
2. the 'verbose' parameter can be defined in the cfg-file
3. the Program generates a WARNING message if unknown parameter appears.

### Version 1.45
1. Fixed an memory allocation error.
2. Fixed error with list file location. Now file list can be located in 'files' directory

### Version 1.44
1. Fixed error in output files (segment boundaries are now defined as end=beg+window_length)
2. Active module is removed from the StereoGene main program
3. local correlation can be calculated as f\int g\rho + g\int f\rho and as \int g\rho*\int f\rho (see parameter outWig)
4. Active is implemented as a separate program.

### Version 1.43
1. Previous version has a limit on the chromosome number - 300. 1.43 has not such limit.
2. Files with distance distributions *.fgCorr and *.bgCorr are replaced by single file *.dist
3. Flag definition Distances=<0|1> is replaced by Distances=<TOTAL | DETAIL | NONE>: 
   In the first case <TOTAL> the file *.dist will contain fields: 
   	   x - distance
	   Bg - background correlation function
	   Fg - foreground correlation function
	   FgPlus - foreground correlation function for the positive windows
	   FgMinus - foreground correlation function for the negative windows
   In the second case <DETAIL> the file *.dist will contain additional fields with the distance distribution for every chromosome separately.
4. The chromosome statistics file can be created.
5. Cumulative file Statistics changed. It contains now additional fields with average and standard deviations of foreground and background distributions.
