# Using R on the Command Line

This walk-through will be the lead into the last self-guided activity where we scale up by taking the R scripts we've been making in RStudio to the command line.  

## Video # 6

[![](image link here)](youtube link here)

While so far we've worked with smaller datasets, the scripts you've been using can be used to on an HPC in a loop similar to any other type of data processing. To see how this scale up works, you will learn how to  execute R code within the shell environment. This is key to being able to use a super computer to run R when running complex statistical models or working with larger datasets. We will revisit the code from the first activity and add in a smoothing function called `loess`. 

## Walk-through code

* [RScript File from video](https://github.com/StevisonLab/R-Mini-Course/blob/main/datafiles/4.05.walkthrough.R)

## Data files

* [chrX.depth.out.zip](https://github.com/StevisonLab/R-Mini-Course/blob/main/datafiles/chrX.depth.out.zip)

## Output Graphics

* [chrXL_group3b.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/datafiles/chrXL_group3b.png)
* [chrXL_group3b.smoothed.png](https://github.com/StevisonLab/R-Mini-Course/blob/main/datafiles/chrXL_group3b.smoothed.png)

## Recommended R in Action Readings that cover the material in this video:
* Parts of Chapter 20 on Advanced Programming, 
  * Section 1.2 Control Structures pgs: 470-472
  * Section 1.3 Creating functions pgs: 473-474

# Additional Resources:
Since this page relies on some experience in the shell environment, if you don't have any, you can skip this topic and the last activity and wrap up with Programming in R. Alternatively, there are lots of command line intros out there to get you started. Here is one of my favorite [linux cheatsheets](https://ubuntudanmark.dk/filer/fwunixref.pdf).
