## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# Set Cache of matrix
	m <- NULL
	set <-function(y){
		x <<- y
		m <<- NULL
	}
	# Get Cache of Matrix
	get <- function() x
	# Set value of Inverse 
	setinverse <- function(solve) m <<- solve
	# Get Value of Inverse
	getinverse <- function() m
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)){
        		message("getting cached data")
        		return(m)
        }
        data <- x$get()
        m <-solve(data,...)
        x$setinverse(m)
        m
}
