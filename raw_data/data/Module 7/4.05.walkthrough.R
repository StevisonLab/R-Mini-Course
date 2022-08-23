## Revisiting the command line
  
#So far, we've treated R as separate from linux, but you can execute R from the command line. This is the focus of today's exercise and Lab #9. 
#Make a directory for today's class and start an RScript in RStudio. We will work with the depth data from Lab #7. 
#Copy the data files into the folder to follow along.

## Integrating R with the command line. 

#To do this, we are going to return to a script you wrote when we first started using R. 
#Copy the script `coverage.R` from Lab #7 to this directory. Feel free to clean up the bits in the middle, Remember, we made a copy - you ALWAYS have the original!

samtools.depth=read.table(file="chrX.depth.out")
chrXL_group3b=subset(samtools.depth,V1=="chrXL_group3b")
avg=mean(chrXL_group3b$V3)
plot(chrXL_group3b$V2,chrXL_group3b$V3,xlab="Position",ylab="Depth of Coverage",main="chrXL_group3b Coverage",type="l",lwd=3,col="blue")



## But this is still a really messy plot. First, let's convert the x axis into megabases.
mb=chrXL_group3b$V2/10^6
plot(mb,chrXL_group3b$V3,xlab="Position (Mb)",ylab="Depth of Coverage",main="chrXL_group3b Coverage",type="l",lwd=3,col="blue")

#Notice, we've change the x in our plot function and the label for the x-axis to specify that it is in megabases (Mb) for short.

## Now, let's add in some bells and whistles that we've learned.

#We'll add an abline for the mean and some text stating the mean as well. 
## Let's see our new plot.

plot(mb,chrXL_group3b$V3,xlab="Position (Mb)",ylab="Depth of Coverage",main="chrXL_group3b Coverage",type="l",lwd=3,col="blue")

#add an abline
abline(h=avg,col="red",lwd=3)

#add text with mean
mtext(side=3,paste("mean = ",round(avg,2)),cex=0.8,col="red",adj=1)



#do it again, but write to a file
#Here, we will write the file to a png instead of a PDF. As some of you have noticed, a PDF writes the data as vector graphics 
#and thus the file size is large and takes a long time to load. A png will rasterize the image, reducing the file size and load time.

#write plot to a file
png(file="chrXL_group3b.png",res=600,height=2.75,width=4.5,units="in",pointsize=7)
plot(mb,chrXL_group3b$V3,xlab="Position (Mb)",ylab="Depth of Coverage",main="chrXL_group3b Coverage",type="l",lwd=3,col="blue")

#add an abline
abline(h=avg,col="red",lwd=3)

#add text with mean
mtext(side=3,paste("mean = ",round(avg,2)),cex=0.8,col="red",adj=1)

#turn off plotting device
dev.off()

#Remember, because we wrote this to a file, we need to open the file to see the image. Here, I've embedded the image into the presentation.
#let's play with some of these png paramters - res, height/width, and pointsize



## Another thing we can do is smooth the data.

#One of the better smoothing functions in R is `loess`. 

#can either specify a 'span'
lo=loess(chrXL_group3b$V3~chrXL_group3b$V2,span=0.01,data.frame(x=chrXL_group3b$V2,y=chrXL_group3b$V3))
#function will take ~1-2 minutes to run depending on your OS

#span=0.01 is a 1% smoothing span, very low, but we have LOTS of data, so anything bigger and it would take VERY long
length(chrXL_group3b$V2)
length(chrXL_group3b$V2)*0.01

#can also smooth using 'enp.target'; more useful if smoothing over different size datasets, uses precise number rather than percentage
lo=loess(chrXL_group3b$V3~chrXL_group3b$V2,enp.target=tail(chrXL_group3b$V2,1)/500,data.frame(x=chrXL_group3b$V2,y=chrXL_group3b$V3))

#what is the enp.target?
tail(chrXL_group3b$V2,1)
tail(chrXL_group3b$V2,1)/500


## Span versus enp.target

#As we've done before, we will start with a blank plot and add each piece in one at a time. Start with the subsetted XL_group3b

#use larger smoothing span
lo1=loess(chrXL_group3b$V3~chrXL_group3b$V2,span=0.001,data.frame(x=chrXL_group3b$V2,y=chrXL_group3b$V3))

plot(mb,chrXL_group3b$V3,ylim=range(predict(lo1)),main="chrXL_group3b Coverage",xlab="Position (Mb)",ylab="Coverage",type="n")

#add loess prediction
lines(mb,predict(lo1),lwd=3,col="red")


#Repeat with other chromosome, you may need to go back to your code and re-subset:
chrXR_group3a=subset(samtools.depth,samtools.depth$V1=="chrXR_group3a")
mb2=chrXR_group3a$V2/10^6


#redo for a much longer chromosome:
lo2=loess(chrXR_group3a$V3~chrXR_group3a$V2,span=0.001,data.frame(x=chrXR_group3a$V2,y=chrXR_group3a$V3))

plot(mb2,chrXR_group3a$V3,ylim=range(predict(lo2)),main="chrXR_group3a Coverage",xlab="Position (Mb)",ylab="Coverage",type="n")

#add loess prediction
lines(mb2,predict(lo2),lwd=3,col="red")

#range of data without smoothing
summary(chrXL_group3b$V3)
summary(chrXR_group3a$V3)

#range of smoothed data
summary(predict(lo1))
summary(predict(lo2))

#using span, we are smoothing over a different number of paramters for the two datasets based on their size. 
#This makes it hard to compare from chromosome to chromosome
#enp.target is preferred method for chromosomes so they can be compared

#let's compare!
#lo=loess(chrXL_group3b$V3~chrXL_group3b$V2,enp.target=tail(chrXL_group3b$V2,1)/500,data.frame(x=chrXL_group3b$V2,y=chrXL_group3b$V3))
lo3=loess(chrXR_group3a$V3~chrXR_group3a$V2,enp.target = tail(chrXR_group3a$V2,1)/500,data.frame(x=chrXR_group3a$V2,y=chrXR_group3a$V3))

#range of data without smoothing
summary(chrXL_group3b$V3)
summary(chrXR_group3a$V3)

#range of smoothed data
summary(predict(lo))
summary(predict(lo3))


## Integrate smoothed data with previous plot

#Let's add this smoothed data on top of the raw data and write it to a file.

## Let's see our new plot.
plot(mb,chrXL_group3b$V3,main="chrXL_group3b Coverage",xlab="Position (Mb)",ylab="Coverage",type="l",col="grey50")

#only text of mean needed, not abline, because smoothed function is better!
mtext(side=3,paste("mean = ",round(avg,2)),cex=0.8,col="red",adj=1)
lines(mb,predict(lo),lwd=2,col="red")

#Now, let's plot it into a file:

#can also plot both raw and smoothed data together and write to a file
png(file="chrXL_group3b.smoothed.png",res=600,height=2.75,width=4.5,units="in",pointsize=7)
plot(mb,chrXL_group3b$V3,main="chrXL_group3b Coverage",xlab="Position (Mb)",ylab="Coverage",type="l",col="grey50")

#only text of mean needed, not abline, because smoothed function is better!
mtext(side=3,paste("mean = ",round(avg,2)),cex=0.8,col="red",adj=1)
lines(mb,predict(lo),lwd=2,col="red")
dev.off()



## Scaling up:

#This is a nice script, but this is only the coverage along a single contig for our dataset. 
#We have 13 contigs and would like to see how coverage looks across ALL contigs. This is a bit much for our local machine to do.

#To run this R script on the ASC, we will need to transfer it up to the machine and write a shell script 
#to change the name of the chromosome each time.

## Let's execute our contig only first - test the script works on the ASC.

#An easy way to execute an R script on the command line:
  
#  `R --vanilla <coverage.R`

## Upload your script with the smoothing to the Alabama Super Computer

#Make a new directory for today's exercise. 
#Don't forget to also upload the zip file. 
#We used the compressed file because the upload is faster. Unzip the file and run your script on the command line. 

#Write a shell script so you can submit this to the class queue - remember it took several minutes on your desktop.

## A shell script to execute an RScript

#* Add a shebang line
#* Load the R module
#* Use the vanilla option to run the script

#Save your file, make it executable, and run it in the class queue with 30 minutes of runtime and 500MB of memory.

#Download the resulting png file to make sure it worked. 

## What do we need to automate to run this for both chromosomes in this file?

#Let's make a shell script and write a loop. Think back to project 2 and write out some pseudo code. 

## Lab #9: scaling up!

#You will make your first pipeline. A pipeline integrates code into a master script that executes sub-code. We will write a master shell script to execute our `coverage.R` code on multiple chromosomes.

#A folder in the shared directory labeled 'Lab9' contains the output of samtools depth on ALL 13 contigs separately, including the two you have been working with so far.

#In Lab 9, you will work on this master shell script to get the 13 individual plots. You will turn in a zip file containing your master shell script, your edited `coverage.R` script from this walk through, and the 13 plots to canvas by the end of the week. We will use the 13 plots in Lab 10 as we wrap up the course!