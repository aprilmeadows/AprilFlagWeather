library(tidyverse)

# creates the FizzBuzz function with one numerical input
FizzBuzz <- function(n){
  if(n<1|n==Inf){stop("Input should be a positive, finite integer.")}
  else{
  vect <- c(1:n)
  for(i in vect){
    if(i%%3==0 & i%%5==0){vect[i]="Fizz Buzz"}
    else if(i%%3==0){vect[i]="Fizz"}
    else if(i%%5==0){vect[i]="Buzz"}
  }
  return(vect)}
}


usethis::use_testthat()
usethis::use_test("FizzBuzz")
