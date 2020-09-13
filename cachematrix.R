## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inver<-NULL
    set<-function(y){
        x<<-y
        inver<<-NULL
    }
    get<-function() x
    setsolve<-function(solve) inver<<-solve
    getsolve<-function() inver
    list(set = set, get = get,
         setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inver <- x$getsolve()
    if (!is.null(inver)){
        message("getting inversed matrix")
        return(inver)
    }
    data <- x$get()
    inver<-solve(data, ...)
    x$setsolve(inver)
    inver
}
}
