## makeCacheMatrix calculates the inverse of the matrix and Caches it
## cacheSolve checks to see if the matrix changed.  If not, it returns the Cached inverse.  If it has, it uses makeCacheMatrix to calculate the change

## This caches the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  cacheMatrix<<-solve(x)
  
}


## This checks if the matrix has changed.  If so, recalculate the inverse matrix. If not, return the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
#Check if an inverse matrix has ever been cached.  If not, then Cache it.
  if (!exists("m")){
    m<<-x
    cacheMatrix<-makeCacheMatrix(x)
  }
  
#Check if matrix has changed  
  if (m==x){
#Matrix has not changed so return Cached Matrix
    return(cacheMatrix)
    
  } else {
#Matrix has changed so call makeCacheMatrix to calculate it
    cacheMatrix<-makeCacheMatrix(x)
    m<<-x
    return(cacheMatrix)
  }
  
  
  
}




