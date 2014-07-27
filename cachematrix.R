## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       matrixInver<- NULL
       set <- function(y) {
              x <<- y
              matrixInver<<- NULL
       }
       get <- function() x
       setInver <- function(inv) matrixInver <<- inv
       getInver <- function() matrixInver
       list(set = set, get = get,
            setInver  = setInver ,
            getInver = getInver)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       matrixInver <- x$getInver()
       if(!is.null(matrixInver)) {
              message("getting cached inverse")
              return(matrixInver)
       }
       Inver <- x$get()
       matrixInver<- solve(Inver, ...) ##solve Çó¾ØÕóµÄÄæinverse
       x$setInver(matrixInver)
       matrixInver
        ## Return a matrix that is the inverse of 'x'
}
