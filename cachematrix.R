## Put comments here that give an overall description of what your
## functions do

## generate a special matrix that can store its inverse 

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function(){
    x
  }
  setInv <- function(inv){
    inverse <<- inv
  }
  getInv <- function(){
    inverse
  }
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## calculate the inverse of a given matrix

cacheSolve <- function(x, ...) {
  if(!is.null(x$getInv())){
    return(x$getInv())
  }
  else{
    inverse <- solve(x$get())
    inverse
  }        ## Return a matrix that is the inverse of 'x'
}
