## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(pMatrix) {
    x <<- pMatrix
    inverseMatrix <<- NULL
  }
  get <- function() x
  setInverseMatrix <- function(solve) inverseMatrix <<- solve
  getInverseMatrix <- function () inverseMatrix
  list(set = set, get = get, 
       setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverseMatrix <- x$getInverseMatrix()
  if (!is.null(inverseMatrix)) {
    message ("returing inverse matrix from cache")
    return(inverseMatrix)
  }
  data <- x$get()
  inverseMatrix <- solve(data,...)
  x$setInverseMatrix(inverseMatrix)
  inverseMatrix
}
