## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## return a list of function
  i <- NULL
  ## global name to cache the inverse
  set <- function(y) {
    ## set the matrix
    x <<- y
    i <<- NULL
  }
  get <- function() x
  ## get the matrix
  setinverse <- function(inv) i <<- inv
  ## set the inverse
  getinverse <- function() i
  ## get the inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    ## check if the inverse is already computed
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}
