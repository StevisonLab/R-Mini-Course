# Data folder contents

This folder contains data objects that are meant to be used with the R-Project. These files can be read directly into R from within the R project once downloaded.

This folder also contains two PDF files that correspond to Activity #1 and the module on Advanced Graphing. 

Check the individual readme files for each module to know which files are relevant to the module you are working with!

## How to read these files into your workspace:
As an example, in Activity #1, you will work with the file "chr4.depth.out". Rather than access the larger data tarball in the "raw_data" folder, you can quickly add this file to your workspace using the R data object from this folder. Using the code below, you will use the command "readRDS" to read the object and point to the file "activity1_data.rds". This code then "assigns" the object to the name "samtools.depth", which matches the activity instructions. 

```
samtools.depth <- readRDS("data/activity1_data.rds")
```

Note: for this code to work, you will need to set your working directory to the folder where you have the main R project. 
