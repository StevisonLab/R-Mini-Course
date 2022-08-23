Module 1: Getting Setup in the R and Rstudio Environment
================

Both R and RStudio are cross platform compatible (Windows/Mac/Linux) and
FREE. Make sure to install BOTH [R](https://www.r-project.org/) and
[RStudio](https://rstudio.com/) to practice R and do the exercises in
this mini course. Choose the appropriate download for your OS before
downloading. If you already have these installed, check to make sure you
are up-to-date with the latest versions of both!

Once you have both softwares installed, watch the first short video
below to get introduced to this environment before launching the first
activity.

## Video #1

[![](https://github.com/StevisonLab/R-Mini-Course/blob/main/images/mq2.jpeg)](https://youtu.be/uNW5dlrXd2w)

## Recommended R in Action Readings to get you started:

-   Chapter 1: pgs. 3-19

# Activity 1: Plotting Coverage along a contig

This laboratory exercise is provided to introduce you to R and the
RStudio environment. At the end of this exercise, you should be able to
explain the concept of genome coverage, produce a quality plot of
coverage along a chromosome and feel comfortable using and working in R
and the RStudio environment. You will also learn the importance of
reproducibility in bioinformatics research and make a script that they
can use afterwards.

For this activity, we have provided a [2 page
handout](https://docs.google.com/document/d/1cjoB1En9wHG8O_UDptQovVQUAdE14chjRca5r2ez-R4/edit?usp=sharing).
Because R/RStudio changes, this is provided as a link to a google doc so
that it may be updated. You can download it as a PDF so that you can
print it to follow along. You will also need the file
**chr4.depth.out.zip**. This file (and all data files) can be found in
the compressed directory
[all_data.tgz](https://github.com/StevisonLab/R-Mini-Course/tree/main/data/all_data.tgz),
click the link and then select “Download”. For other small files
throughout the mini course, select the option to view as raw and then
you can save the text.

You also have access to a **[One Page
Handout](https://github.com/StevisonLab/R-Mini-Course/blob/main/data/Activity1_intro.pdf)**
that explains some of the concepts covered in the activity.

## Learning objectives:

-   Be able to explain the concept of sequence coverage
-   Conduct basic summary statistics to evaluate quantitative data in R
-   Isolate columns and subset data in R
-   Make simple plots to evaluate data graphically
-   Interpret graphs displaying quantitative data
-   Reinforce the concept of reproducibility
-   Make an R script in RStudio

To check your answers, we have also provided a key located in the
compressed data download, **Activity1Key.Rmd**, for you after you are
done with the assignment.

``` r
plot(cars)
```

![](module1_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

Add a new chunk by clicking the *Insert Chunk* button on the toolbar or
by pressing *Cmd+Option+I*.

When you save the notebook, an HTML file containing the code and output
will be saved alongside it (click the *Preview* button or press
*Cmd+Shift+K* to preview the HTML file).

The preview shows you a rendered HTML copy of the contents of the
editor. Consequently, unlike *Knit*, *Preview* does not run any R code
chunks. Instead, the output of the chunk when it was last run in the
editor is displayed.
