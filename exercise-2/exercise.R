# Exercise 2: writing and executing functions (II)

# Define a function `CompareLength` that takes in 2 character strings, and returns
# the sentence of the form
#   "The difference in length is N"
CompareLength <- function(first, second){
  length1 <- nchar(first)
  length2 <- nchar(second)
  result <- paste("The difference in length is", abs(length1 - length2))
  return(result)
}

# Pass two strings of different lengths to your `CompareLength` function
print(CompareLength("hey", "random"))

# Define a function `DescribeDifference` that will return one of the following statements:
# "Your first string is longer by N characters"
# "Your second string is longer by N characters"
DescribeDifference <- function(first, second){
  if(nchar(first) > nchar(second)){
    result <- paste("Your first string is longer by ", nchar(first)-nchar(second), " characters")
  }else{
    result <- paste("Your second string is longer by", nchar(second)-nchar(first), "characters")
  }
  return(result)
}

# Pass two strings of different lengths to your `DescribeDifference` function
print(DescribeDifference("first", "second"))
