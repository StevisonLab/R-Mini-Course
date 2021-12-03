# <p align="center">Activity #3: Using R on an HPC</p>

##### <p align="center"><b>BEFORE STARTING THE ASSIGNMENT, PLEASE READ ALL OF THE INSTRUCTIONS</b></p>

##### Today you will be integrating R with shell. This activity is written to work on the Alabama Super Computer (ASC), but you may have access to another HPC for use. For Part A, we have provided a modified R script from Lab 7 that is covered in the walkthrough from Module 7. As first discussed in Module 7, this lab activity will consist of you writing your first pipeline to integrate R code and shell code to make multiple plots. Make sure to have watched that video BEFORE getting started! In part A, you will re-orient yourself to the ASC (or other HPC) and test run your R script as a shell script to the ASC queue. Then, for Part B, you will write a more involved shell script to run the modified R script. 

## Part A:

1. Login to the ASC and create a directory for today's lab activity called `NAME_Activity3`. 

2. Transfer over the script "coverage.R" and the tarball "depth.tgz" tarball from the R mini course [tarball](https://github.com/StevisonLab/R-Mini-Course/blob/main/data/all_data.tgz). 

3. You should recognize the "coverage.R" script from Activity #1, which has been modified to run on the command line as was done in Module 7. As reminder, this modified script now includes the following elements:

      a. Label the x and y axes, and add a title to the plot

      b. Add an abline at the mean of the coverage along the chromosome

      c. Add text of the mean coverage value to the plot

      d. Plot will be written to a PNG file
  
      e. Apply a Loess smoothing function to the coverage data

      f. Plot smoothed lines on top of raw data

4. Extract the tarball "depth.tgz" into your Activity3 directory. This folder contains the output of samtools depth on ALL 13 contigs of *Drosophila pseudoobscura* separately, including the two you have been working with so far.

5. In order to test that the modified "coverage.R" script works, you will need to run it on the contig referred to in the script. This file should now be in your Activity3 directory since it was in the tarball you extracted. 

6. First, run your script on the command line using the following syntax `R --vanilla <coverage.R`. 

7. Now, test run the same script as a job you will submit to the ASC queue. To do your test run, you will need to make a `test.sh` file. Your script will need the following elements:

 a. Add a shebang line.
 
 b. Load the R module.
 
 c. Use the vanilla option above to run R on the command line. 

8. Save your script, make it executable. Submit it as a job to the ASC using the class queue with 30 minutes of runtime and 500MB of memory.

9. Download the resulting png file to your local computer to open it and make sure it worked. 

## Part B:

1. Now you are ready to scale up! Create an empty shell script called `NAME_Activity3.sh`. 

2. For this to work, we will want to run the modified coverage.R script on EACH input file that unpacked from the tarball. To do this, you will need to write your shell script to use the coverage.R script as a TEMPLATE to create multiple scripts where the chromosome name is edited to match each input file. This will work best as a LOOP and will help you apply the regex tools you learned in Module 3! Think back to Module 2 and try to sketch out some pseudo code in your group to accomplish this!

3. The next part of your loop will execute the R script on each input file to produce a PNG graphic. The result will be plots of chromosome coverage for each depth output provided.

4. There are a few ways that you could accomplish your loop - You may choose to use the loop to make multiple shell scripts and submit multiple jobs to the ASC. This would allow jobs to be submitted at the same time and thus to run in parallel. Alternatively, you can setup a loop to run the R script on each file in series as part of a single script and single job (somewhat easier, but requires MUCH more time).

5. Note, because the smoothing function is so computationally intensive, some of the larger chromosomes may take the maximum queue time of 4 hours to successfully plot. 

6. For each plot you make, download the resulting file to confirm it worked just as you did with your test plot at the end of Part A.


## Part C:

1. Once you have downloaded all 13 plots to make sure they were successful, make a tarball of the folder with the modified coverage.R you used, the shell script you wrote to run your pipeline, and the PNG outputs for each chromosome. Download your tarball from the ASC and upload it to canvas.

2. In your preferred text editor, please respond to the following reflection questions (1 Paragraph MAX per questions): 

      a. How does your impression of the utility of R change now that you see how it can be used on the command line?
 
      b. How did your impression of your own abilities change after completing this lab assignment?
 
      c. This lab is the most computationally intensive work we've done this semester - the first that actually REQUIRED a super computer. How has this assignment changed your perspective on scalability of the tools you have learned throughout this semester?  

3. Save your response in a document titled `NAME_reflection.txt`.


