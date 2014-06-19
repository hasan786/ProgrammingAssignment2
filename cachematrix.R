## This program calculates the inverse of a matrix and stores in the cache 
## memory and retrieves the same when required again. Thus saving a lot of 
##computation time of the computer.

##In order to get the results from this program, an invertible matrix is
##created and saved with the name myMatrix for example,
##myMatrix<-matrix(c(4,2,7,6),2,2)

## After this, this program is sourced and then the following command
##is executed to get the inverse of the myMatrix:
##cacheSolve(inv)


makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y)
{x<<-y
m<<-NULL
}
get<-function()x
setinverse<-function(solve) m<<-solve
getinverse<-function()m
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}
inv<-makeCacheMatrix()
inv$set(myMatrix)


## Write a short comment describing this function

cacheSolve <- function(x, ...) {m<-x$getinverse()
if(!is.null(m))
{message("getting cached data")
return(m)
        ## Return a matrix that is the inverse of 'x'
}
data<-x$get()
m<-solve(data,...)
x$setinverse(m)
m

