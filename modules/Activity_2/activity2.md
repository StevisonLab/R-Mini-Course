Activity #2: Practice Graphing in R
================

For the lab assignment, you will use the
[SimpleRGraphs](https://github.com/adc0032/SimpleRGraphs) tutorial to
walk through introductory graphics in R. When you are finished, you
should feel confident making graphs in R.

## Learning Objectives:

-   Learn to create different graphs using basic R functions
    -   Line Graphs
    -   Bar Graphs
    -   Pie Graphs
    -   Histograms
    -   Dot Graphs
-   Learn to manipulate and customize graphs created with base R
-   Apply rendering methods from video walkthroughs to create a PDF of
    graphs

## Installation

#### Linking your Github and Rstudio

This tutorial was built in and works within Rstudio but it also works in
web browsers. The packages developed for this tutorial are hosted on
Github, so you will need to make sure that your Rstudio and Github are
linked for a *smooth* installation. **If you do not have Github and
Rstudio configured to work together, please visit [this
gist](https://gist.github.com/z3tt/3dab3535007acf108391649766409421) to
get setup!**

#### Programs to download outside of Rstudio

**Mac Users** will need [Xcode developer tools from the App
store](https://developer.apple.com/xcode/features/) in order to use
`devtools`  
**Windows Users** will need [Rtools from
CRAN](https://cran.r-project.org/bin/windows/Rtools/) in order to use
`devtools`

#### Now install the tutorial!

*If you do not have `learnr` & `devtools` installed already, use the
commented(#) lines in the code chunks below **before** running
`library()`*

**First**: You will need `learnr` to run this tutorial (or create your
own - [learnr
documentation](https://rstudio.github.io/learnr/index.html)):

``` r
# Run the install line ONCE
install.packages("learnr")

library(learnr)
```

**Second**: Install the development version of the tutorial from
[GitHub](https://github.com/) with devtools:

``` r
# Run the install line ONCE
install.packages("devtools")

library(devtools)
devtools::install_github("adc0032/SimpleRGraphs")
```

**Third**: This tutorial package has an accompanying data package that
can be accessed from [GitHub](https://github.com/) with:

``` r
devtools::install_github("adc0032/WILD7150")
```

The package also requires `tidyverse`, but you should be prompted to
install if you do not have it installed already.

## Running

To start the tutorial **in a web browser (pref. Google Chrome)**, run
the following command in your console:

``` r
learnr::run_tutorial("simplergraphs", package = "SimpleRGraphs")
```

Additionally, you should now have a “Tutorial” tab, where you can access
“Simple Graphs in R” by clicking **Start Tutorial** This will start the
tutorial **in an Rstudio window** ![Tutorial
Pane](../../images/tutorialpane.png)

## Next page:

[Module 4: Advanced Graphing in
R](https://github.com/StevisonLab/R_Mini_Course/blob/main/modules/Module_4/module4.md)
