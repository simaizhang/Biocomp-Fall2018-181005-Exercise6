# Simai Zhang / Exercise 6
# part 1 
file=read.csv(file="iris.csv",header=T,stringsAsFactors = F) # define the variable 'file', and read the file
number <- 3 # define the variable 'number' with default value 3
head(file,number) # display the first three of file

### Brittni: We wanted you to recreate the functionality of head without using it. I took off 0.25 points, because you did still assign the variables. What we were looking for was something like:
## file[1:number,]

# part 2
setwd("~/bio/Biocomp-Fall2018-181005-Exercise6/")
iris=read.csv(file="iris.csv",header=T,stringsAsFactors = F)

#2.1
dim(iris) # get the dim of iris (to get the last two columns and rows numbers)
sort_iris1=iris[149:150,4:5]
sort_iris2=iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)]
# two different methods (the second one does not require the dim of iris)

#2.2
unique(iris$Species) # get the kinds of species
sum_setosa=sum(iris$Species=="setosa") # get the number of "setosa"
sum_versicolor=sum(iris$Species=="versicolor") # get the number of "versicolor"
sum_virginica=sum(iris$Species=="virginica") # get the number of "virginica"
sum_setosa # display the number of "setosa"
sum_versicolor # display the number of "versicolor"
sum_virginica # display the numever of "setosa"
#2.3
sort_row=iris[iris$Sepal.Width>3.5,]  
sort_row # display it 

#2.4
sort_setosa=iris[iris$Species=="setosa",] # get the data for the species "setosa"
write.csv(setosa,file="setosa.csv",sep=",") # write the data into the file "setosa.csv"

#2.5
virginica=iris[iris$Species=="virginica",] # get the data for the species " virginica"
mean=mean(virginica$Petal.Length) # get mean for Petal.Length
min=min(virginica$Petal.Length) # get minimum for Petal.Length
max=max(virginica$Petal.Length) # get maximum for Petal.Length
