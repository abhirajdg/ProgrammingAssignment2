## Assignment 2 for Coursera - Lexical Scoping
## Function to create soecial matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y){ 
  x <<- y
  i <<- NULL
}
get <- function() x
setinverse <- funtion(inverse) i <<- inverse
getinverse <- function() i
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Function to compute the inverse of special matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
          message("Getting cached data")
          return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
