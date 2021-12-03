# Activity #3: R on a supercomputer - building a pipeline script

As first discussed in the Video "Using R on the command Line", this lab activity will consist of you writing your first pipeline to integrate R code and shell code to make multiple plots. 

For this activity, we have provided step-by-step instructions [here](https://github.com/StevisonLab/R-Mini-Course/blob/main/pages/R_on_a_HPC.md). 

Briefly, you will start with modified R script meant to run on the command line (CL) as was done in the [CL walkthrough](https://github.com/StevisonLab/R-Mini-Course/blob/main/pages/Use%20R%20on%20the%20CL.md). You will then upload the code to an HPC of choice in a new directory for this activity (we use ASC in the video). Next, download the tarball [depth.tgz](https://auburn.box.com/s/qmidzeem7li7lm5uyyw3h3do6pz4nruq) and upload it to your HPC directory for this activity (this tarball is **NOT** in the all_data.tgz file). Extract the tarball to find the files you will need for this activity. Next, you will make a shell script that consists of a loop to make plots of chromosome coverage for each depth output provided.

Coder's dilemma - Serial vs. Parallel: You may choose to use the loop to make multiple shell scripts and submit multiple jobs to an HPC (this would allow jobs to run in parallel). Alternatively, you can setup a loop to run the R script on each file in series as part of a single script and single job (somewhat easier, but needs MUCH more time).

Finally, you will submit your code to an HPC to run and produce similar R plots for multiple input files. These will need to be downloaded to view and can be used to arrange a multi-panel plot, similar to ones seen in publications!

 ## Learning objectives:
* Using R on the command line and on an HPC
* Writing well documented scripts in shell and R
* Integrating R and Shell code into a pipeline
* Effective use of loops
* Using regular expressions in a loop
* Upload and download files to/from an HPC
* Submitting jobs to an HPC queue

## Answer Key scripts
 
* coverage.serial.sh
* coverage.parallel.sh

**Associated code and data files are within the compressed data file.**

## Images

* [chr3.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chr3.png)
* [chr4_group1.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chr4_group1.png)
* [chr4_group2.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chr4_group2.png)
* [chr4_group3.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chr4_group3.png)
* [chr4_group4.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chr4_group4.png)
* [chr4_group5.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chr4_group5.png)
* [chrXL_group1a.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chrXL_group1a.png)
* [chrXL_group1e.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chrXL_group1e.png)
* [chrXL_group3a.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chrXL_group3a.png)
* [chrXL_group3b.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chrXL_group3b.png)
* [chrXR_group3a.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chrXR_group3a.png)
* [chrXR_group6.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chrXR_group6.png)
* [chrXR_group8.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/chrXR_group8.png) 

## Next page:
[Congrats! and Additional Resources](https://github.com/StevisonLab/R-Mini-Course/blob/main/pages/Congrats.md)
