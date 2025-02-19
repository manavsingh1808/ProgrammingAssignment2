## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
this function calculates the inverse of a matrix and checks if it is stored already in cache in memory or not.

makeCacheMatrix <- function(x = matrix()) {

        invMatrix <- NULL
        setMatrix <- function(y){
        x <<-y
         invMatrix <<- NULL
                
        }
        getMatrix <- function()x
        setInverse <- function(inverse) invMatrix <<- inverse
        getInverse <- function() invMatrix
         list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverse =setInverse,
             getInverse = getInverse)

                }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
              invMatrix<- x$getInverse()
        if(!is.null(invMatrix)) {
                message("getting cached inverse matrix")
                return(invMatrix)
        }
        data <- x$getMatrix()
        invMatrix <- solve(data, ...)
        x$setMatrix(invMatrix)
        invMatrix
}
