# Activity #3: R on a supercomputer - building a pipeline script

As first discussed in the Video "Using R on the command Line", this lab activity will consist of you writing your first pipeline to integrate R code and shell code to make multiple plots. You will start with the R script you wrote for the first activity and modify it to run on the command line (CL) as was done in the [CL walkthrough](https://github.com/StevisonLab/R-Mini-Course/blob/main/Use%20R%20on%20the%20CL.md). You will then upload the code to an HPC of choice in a new directory for this activity (we use ASC in the video). Next, download the tarball [depth.tgz](https://auburn.box.com/s/qmidzeem7li7lm5uyyw3h3do6pz4nruq) and upload it to your HPC directory for this activity. Extract the tarball to find the files you will need for this activity. Next, you will make a shell script that consists of a loop to make plots of chromosome coverage for each depth output provided.

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

## Congrats!
**Congratulations!** You've made it to the end of this mini course in R. Below are some additional resources to help you continue on your journey to mastering R!

* [YouTube Course: Comp Bio with R](https://www.youtube.com/playlist?list=PLA54E692040796EA5) 
* [Online Textbook: Advanced R by Hadley Wickham](https://adv-r.hadley.nz/) 
* [Analysis Factor R Tutorial Collection](https://www.theanalysisfactor.com/r/)
* [Blog: Long to Wide Formats in R](http://reasoniamhere.com/2013/09/26/switching-between-long-and-wide-formats-in-r/)
* [Series of Manuals by UC Riverside](http://manuals.bioinformatics.ucr.edu/)
* [Computational Genomics Course Materials](https://eacooper400.github.io/compGen8900.html)
* [Hitchhiker's Guide to Data Science, Machine Learning, R, Python](https://www.hadoop360.datasciencecentral.com/blog/hitchhiker-s-guide-to-data-science-machine-learning-r-python)
* [An Intro to ggplot2](https://seananderson.ca/ggplot2-fish554/)
* [Free Online Book: Fundamentals of Data Visualization by Claus O. Wilke](https://serialmentor.com/dataviz/)

## Need more data???
Try some of these downloadable practice datasets!

* [An International Journal on the Teaching and Learning of Statistics](http://jse.amstat.org/jse_data_archive.htm)
* [Kaggle](https://www.kaggle.com/)
* [PhysioNet: The Research Resource for Complex Physiologic Signals](https://physionet.org/)
