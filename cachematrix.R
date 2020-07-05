## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Programming Assignment 2 - inverse cache matrix 
#creates the cache matrix which will be used as argument 
#creates list of mutator and accessor methods to be used for the matrix
#function to find the inverse 
#applicable only to square matrices
makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<-function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  #inverse<<- solve(x)
  #setinverse<- function(solve) m
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
#matrix in the form of makeCacheMatrix() can be passed through 
#checks if the inverse is already calculated and stored in cache with the if statement 
#if data is not cached then calculates and returns the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m<- solve(data, ...)
  x$setinverse(m)
  m
}
