# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vec1, vec2)
{
  return(length(vec1)-length(vec2))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3,4),c(5,6,7))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec1, vec2)
{
  len <- CompareLength(vec1, vec2)
  if(len>0)
  {
    return(paste("Your first vector is longer by", len, "element(s)"))
  }
  return(paste("Your second vector is longer by ", len, "element(s)"))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3,4),c(5,6,7))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(vec1, vec2, vec1.name,vec2.name)
{
  len <- CompareLength(vec1, vec2)
  if(len>0)
  {
    return(paste(vec1.name,"is longer."))
  }
  return(paste(vec2.name,"is longer."))
}
