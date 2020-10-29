## Put comments here that give an overall description of what your
## functions do

## This function creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y){
		x <<- y
		inverse <<- NULL
	}

	get <- function() x
	setInverse <- function(solveMatrix) inverse <<- solveMatrix
	getInverse <- function() inverse
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function gets the inverse of the special matrix that is returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv <- x$getInverse()
	if (!is.null(inverse)){
		message("getting cached data")
		return(inverse)
	}
	data < - x$get()
	inverse <- solve(data)
	x$setInverse(inverse)
	inverse
}
