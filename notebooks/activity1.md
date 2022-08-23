Activity 1: Plotting Coverage along a contig
================

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
print it to follow along.

You also have access to a **[One Page
Handout](https://github.com/StevisonLab/R_Mini_Course/blob/main/data/Activity1_intro.pdf)**
that explains some of the concepts covered in the activity.

Finally, you will need to access the data: **chr4.depth.out**.

-   If you need practice loading data into R, this file (and all data
    files) can be found in the compressed directory all_data.tgz; click
    the link
    [all_data.tgz](https://github.com/StevisonLab/R-Mini-Course/tree/main/raw_data/all_data.tgz)
    and then select “Download” to save locally.

-   To quickly access **chr4.depth.out** add these data to your
    workspace, by restoring our data object and assigning to your data
    object (i.e.,
    `samtools.depth <- readRDS("data/activity1_data.rds")`.

### Learning objectives:

-   Be able to explain the concept of sequence coverage
-   Conduct basic summary statistics to evaluate quantitative data in R
-   Isolate columns and subset data in R
-   Make simple plots to evaluate data graphically
-   Interpret graphs displaying quantitative data
-   Reinforce the concept of reproducibility
-   Make an R script in RStudio

To check your answers, we have also provided a key **[Activity 1
Key](https://github.com/StevisonLab/R_Mini_Course/blob/main/notebooks/activity1key.md)**,
for you after you are done with the assignment.
