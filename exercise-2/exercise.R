# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(x,y) {
    
    x.length <- length(x)
    y.length <- length(y)  
    if (x.length > y.length) {
        
        n <- x.length - y.length
        
    }
    else (n <- y.length - x.length)
    answer <- paste("The difference in lengths is",toString(n))
    return(answer)
    
}
    
# Pass two vectors of different length to your `CompareLength` function
x <- c(1:10)
y <- c(3:30)
CompareLength(x,y)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(a,b) {
    
    a.length <- length(a)
    b.length <- length(b)  
    if (a.length > b.length) {
        
        d <- a.length - b.length
        answer <- paste("Your first vector is longer by",toString(d),"elements")
    }
    else (d <- b.length - a.length)
    answer <- paste("Your second vector is longer by",toString(d),"elements")
    return(answer)
    
}

# Pass two vectors to your `DescribeDifference` function
a <- c(4:7)
b <- c(3:19)
DescribeDifference(a,b)
### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifferenceBonus <- function(a,b) {
    
    a.length <- length(a)
    b.length <- length(b)  
    if (a.length > b.length) {
        
        answer <- paste("Vector", deparse(substitute(a)), "is longer")
    }
    else answer <- paste("Vector", deparse(substitute(b)), "is longer")
    return(answer)
    
}
