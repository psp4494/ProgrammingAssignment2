## The function makes a cache of an inverse matrix and checks if it already exists

## The below function makes a cache of a inverted matrix

makeCacheMatrix <- function(x = matrix()) {
        
        ## Initialise the matrices to NULL
        m <- NULL
        i<- NULL
        
        ## Make functions for setting and getting the values
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() {
                x
        }
        setinverse <- function(inverse) {
                i <<- inverse 
        }  
        getinverse <- function() {
                i
        }
        
        ## Return list of all functions
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## The following function checks if inverse for the matrix is already calculated

cacheSolve <- function(x) {
        
        ##Get a value for inverse
        m <- x$getinverse()
        
        ##Check if inverse already exists
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ##If inverse doesn't exist solve for inverse
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
}
