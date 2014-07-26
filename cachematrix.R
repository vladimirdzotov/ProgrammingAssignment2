## In this function we inversing inputed matrix bu function solve() and caching it.
## So, there will be no need to calculate inverse every time. 

## Getting the matrix inputed, invert it. 

makeCacheMatrix <- function(x = matrix()) { 
        s <- NULL                           
        setMatrix <- function(y) {                                    
                x <<- y                     
                s <<- NULL
        }
        getMatrix <- function() x
        setInverse <- function(solve) s <<- solve
        getInverse <- function() s
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverse = setInverse,
             getInverse = getInverse)
}



## Here we getting cache and print it 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getInverse()
        if(!is.null(s)) {
                message("getting cached datta")
                return(s)
        }
        data <- x$getMatrix()  
        s <- solve(data, ...) 
        x$setInverse(s)
        s
}
