

## this function takes as input the matrix and has functions to set the matrix values, get the matrix values, get the matrix inverse and set the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <-function(y){
    x <<-y
    m <<-NULL
  }
  get <-function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## this function calculates the matrix inverse but first checks if the matrix inverse is available in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return (m)
  }
  data <-x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
