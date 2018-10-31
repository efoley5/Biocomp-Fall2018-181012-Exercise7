# Problem 1- return all odd rows from dataframe passed as an argument 
oddrows <- function(dataframe) {
  l=length(dataframe)
  n=seq(1, l ,by = 2)
  print(n)
}

### Brittni: Length actually gives the number of columns of a dataframe, not the number of rows. We would want to use nrow(dataframe)
# Also, we wanted the entire row for all odd rows. So a return statement like "return(dataframe[n,])" would work.
# -0.5


# Problem 2 
# Return the number of observations for a given species included in the data set
iris=read.csv("iris.csv", stringsAsFactors = F)

speciescount <- function(species) {
  number=iris[iris$Species==species, ]
  total=nrow(number)
  return(total)
}
#example 
speciescount("virginica")

#Return a dataframe for flowers with Sepal.Width greater 
#than a value specified by the function user
large <- function(s){
  iris[iris[,2]>=s,]
}
large(3.5) 

#Write the data for a given species to a comma-delimited file with the 
#given species name as the file name.
csvfile <- function(x){
  observations=iris[iris$Species==x, ]
  csv=".csv"
  add=paste(x, csv, sep=" ")
  csvfile=write.csv(observations,file=add)
  return(add)
}
#example
csvfile("setosa")
