# Problem 1- return all odd rows from dataframe passed as an argument 
oddrows <- function(dataframe) {
  l=length(dataframe)
  n=seq(1, l ,by = 2)
  print(n)
}
oddrows(c(1,2,3,4,5))
