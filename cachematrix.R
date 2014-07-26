## Put comments here that give an overall description of what your
## functions do

## class discription of an object that appears as a matrix and
## caches its own inverse operation

makeCacheMatrix <- function(x = matrix()) {
	## x is the matrix
	
	## returns a vector containing four functions
	## get, set, getsolve and setsolve

        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## first checks if solve has been cached. If so it returns it 
## otherwise it performs the solve and stores and displays the result

cachesolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        if(!is.null(s)){
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s
}
