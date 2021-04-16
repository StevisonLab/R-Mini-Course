#set working directory
setwd("~/Box/Teaching/Comp Bio Fall 2020/Lectures/Module 4")

## If/else statements
#conditional statements like we've done in shell

#we will use some data from my lab
#these are raw data from an experiment where we measured the impact of temperature on meiotic recombination rate
#we recorded phenotypes as 0's or 1's so we will use R to categorize the data into crossover classes

#read in data 
exp5=read.csv("Exp5_rawdata.csv",header=T)

#An ifelse statement can help us categorize these values, similar to how we used cut to break the quake magnitudes into multiple quantiles. 
#Basic syntax is `ifelse(<condition>,<yes>,<no>)`

#default use
x=c(0.5,0.75,1.1,1.9,1,2,3,4,5,6,7,8,9)
ifelse(x>5, "greaterthan5", "lessthan5")

## Nested ifelse statements

#Sometimes, we may want to have more than a binary categorization. 
#We can use a nested ifelse statement to do this. The more nests, the more categories we create.

#single nest, replace "no" with another condition
ifelse(x>5, "greaterthan5", ifelse(x<2, "lessthan2", "between 5 and 2"))

#same idea, different notation
ifelse(x<=2, ifelse(x<1, "Low","Medium"), "High")

#Both nests give you three categories, but are specified slightly differently. 
#Now that we've converted a continuous string into a categorical variable, 
#there are all sorts of things we can do, such as make box plots within each category.

#But first, let's return to our recombination data:

#Now, let's use this notation to define crossover classes where we will have several nested if-else statements
exp5$co_class=ifelse(exp5$sd==exp5$y & exp5$y==exp5$se,"non_CO", 
                     ifelse(exp5$sd!=exp5$y & exp5$y==exp5$se,"single_CO_1",
                            ifelse(exp5$sd==exp5$y & exp5$y!=exp5$se,"single_CO_2",
                                   ifelse(exp5$sd!=exp5$y & exp5$y!=exp5$se,"double_CO",
                                          "error"))))

#check for errors, which are the removed cut phenotypes.
exp5[exp5$co_class=="error",]


#Let's repeat, but define crossovers numerically instead
#here non crossovers will count as zero crossovers
#single crossovers will count as 1 CO
#double crossovers will count as 2 COs
#since we only focused on males in our experiment, we will multiply by the male count to get the number of COs per row of data
exp5$num_co=ifelse(exp5$y==exp5$sd & exp5$y==exp5$se,0, 
                   ifelse(exp5$sd==exp5$y & exp5$y!=exp5$se,1*exp5$numbMales, 
                          ifelse(exp5$sd!=exp5$y & exp5$y==exp5$se,1*exp5$numbMales,  
                                 ifelse(exp5$sd!=exp5$y & exp5$y!=exp5$se,2*exp5$numbMales, 
                                        NA))))


#Next, we want to get recombination frequency, so we need to calculate the percentage
#Let's make a function

percentage=function (x,y) {
  p=(x/y)*100
  return(p)  
}

#Notice the syntax here - we are storing the new function into an object called `percentage`. 
#We are using the function `function` to create our function. 
#The function itself is in a code block. 
#It includes the `return` function to specify the output to the user for the function.

## Using our function

#To use our function, let's calculate the total number of crossovers and the total number of individuals. 
a=sum(exp5$num_co)
b=sum(exp5$numbMales)

# use the function to calculate recombination frequency
percentage(a,b)


# another way to use the function, more streamlined
percent=percentage(sum(exp5$num_co),sum(exp5$numbMales))


## Make your own function

#Based on your own work or interests, think of a calculation you do commonly and create a function.

