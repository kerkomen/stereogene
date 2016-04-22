# Parameters

## Mandatory parameters

| Parameter                  | Description              |
| -------------------------- | ------------------------ |
|                            | Input file(s). The file names are completed with `-trackPath`         |
| chrom                      | Input file with names of chromosomes and their lengths | 

## Paths

| Parameter                  | Description              |
| -------------------------- | ------------------------ |
| profPath                   | Path to profiles         |
| trackPath                  | Path to the input tracks |
| resPath                    | Path to the output files |

## File names

| Parameter                  | Description              | Notes     |
| -------------------------- | ------------------------ | --------- |
| cfg                        | Config file. It is possible to use more then one config file. They are applied in order of their appearance. | |
| chrom                      | Input file with names of chromosomes and their lengths | Can be set in config file or in the command line or as an environment variable `SG_CHROM` |
| map                        | Mapping profile for the analysis stage. The name is completed with `-profPath`         |           |
| pcorProfile                | Profile for partial correlation. The name is completed with `-profPath` |           |
| statistics                 | File with cumulative statistics for all program runs |           |
| params                     | File for saving the parameters for all program runs |           |
| aliases                    | File with aliases for brief track names  |           |
| log                        | Log file name |           |


## General

| Parameter                  | Description              | Values | Notes     |
| -------------------------- | ------------------------ | ------ | --------- |
| verbose                    | If on, the program workflow is printed to stdout | ON or OFF | |
| silent                     | If on, the general results are not printed to stdout | ON or OFF | |
| NA                         |  The way to treat uncertain values. If 0, uncertain (not covered with the profile) values are considered as 0. Otherwise (only in WIG files) it is filled by a random noise (see the `-noiseLevel` parameter). | 0 or 1 |  This flag has makes sense only for WIG tracks. For other track types this flag is ignored and uncertain values are considered as 0. |

### Flags

| Parameter  | Description                | Notes              |
| ---------- | -------------------------- | ------------------ |
| -v         | Equivalent to `verbose=ON` | Command line only. |
| -s         | Equivalent to `silent=ON`  | Command line only. |
| -na        | Equivalent to `silent=ON`  | Command line only. |







