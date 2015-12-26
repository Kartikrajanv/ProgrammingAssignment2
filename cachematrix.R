## the below functions will cache and retrieve
## the inverser 

## Function "makeCacheMatrix" creates a special "matrix" object that can cache its inverse. 
## makeCacheMatrix contains 4 functions: set, get, setmean, getmean

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## cachesolve function computes the inverse based on the value returned above
## cachesolve will retriev the inverse from cache if the inverse is already computed

cacheSolve <- function(x=matrix(),...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m

 ## Return a matrix that is the inverse of 'x'
}
