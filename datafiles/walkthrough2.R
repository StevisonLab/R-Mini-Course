#set working directory
setwd("~/Box/Teaching/Comp Bio Fall 2020/Lectures/Module 4")

#read in the data
pva=read.csv(file="Lab6_Perl_v_Awk.csv")

#get rid of missing data
pva=read.csv(file="Lab6_Perl_v_Awk.csv",na.strings = "na")
summary(pva)

#plot x v y
plot(pva$Programming.Language.,pva$Sys.Run.Time.)

#make strings as factors for language
pva=read.csv(file="Lab6_Perl_v_Awk.csv",na.strings = "na",stringsAsFactors = T)

#try that again
plot(pva$Programming.Language.,pva$Sys.Run.Time.)

#look at the distribution 
hist(pva$Sys.Run.Time.)

#get rid of outliers
pva2=subset(pva,pva$Sys.Run.Time.<=1)
hist(pva2$Sys.Run.Time.)

#plot again
plot(pva2$Programming.Language.,pva2$Sys.Run.Time.,main="Perl versus Awk",xlab="Programming Language",ylab="Sys Time in Seconds")

#look at means
mean(pva2$Sys.Run.Time.[pva2$Programming.Language.=="Perl"])
mean(pva2$Sys.Run.Time.[pva2$Programming.Language.=="Awk"])
mean(pva2$Sys.Run.Time.[pva2$Programming.Language.=="Python"])

#split out full
full=subset(pva2,pva2$Input.VCF.File.Size.=="Full")
plot(full$Programming.Language.,full$Sys.Run.Time.,main="Perl versus Awk for Full File",xlab="Programming Language",ylab="Sys Time in Seconds")

#split out small
small=subset(pva2,pva2$Input.VCF.File.Size.=="Partial")
plot(small$Programming.Language.,small$Sys.Run.Time.,main="Perl versus Awk for Small File",xlab="Programming Language",ylab="Sys Time in Seconds")

#look at means again
#full
mean(full$Sys.Run.Time.[full$Programming.Language.=="Perl"])
mean(full$Sys.Run.Time.[full$Programming.Language.=="Awk"])
mean(full$Sys.Run.Time.[full$Programming.Language.=="Python"])

#small
mean(small$Sys.Run.Time.[small$Programming.Language.=="Perl"])
mean(small$Sys.Run.Time.[small$Programming.Language.=="Awk"])
mean(small$Sys.Run.Time.[small$Programming.Language.=="Python"])

#but are these statistically different?
model_full=aov(full$Sys.Run.Time.~full$Programming.Language.)
model_small=aov(small$Sys.Run.Time.~small$Programming.Language.)

#get AOV Table
summary(model_full)
summary(model_small)


#let's look at a more complex statistical model
#return to body fat dataset
fat=read.csv(file="BodyFat.csv")

#explore the data
summary(fat)
range(fat$WEIGHT)
range(fat$BODYFAT)

#how many variables do we have?
colnames(fat)

#store model in an object called fit
fit=glm(BODYFAT~WEIGHT+DENSITY+ADIPOSITY+AGE+HEIGHT+NECK+CHEST+ABDOMEN+HIP+THIGH+KNEE+ANKLE+BICEPS+FOREARM+WRIST,data=fat)

#To see the fit, we will make a summary table
summary(fit)
