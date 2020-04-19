## Put comments here that give an overall description of what your
## functions do

# Write functions to inverse invertible matrix. 
# First check if its inverse exits in cache, if so, retrieve it from cache and return its value, 
# otherwise, create teht reverse of the matrix and store it in the cache. 


## Write a short comment describing this function

# The first function, makeCacheMatrix creates a special "vector", which is really a list containing a function to

#set the value of the matrix
#get the value of the matrix
#set the value of the inverse matrix
#get the value of the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
  ix <- NULL
  set <- function(y) {
    x <<- y
    ix <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) ix <<- inverse
  getinverse <- function() ix
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse) 
}


# the second function, cacheSolve.
# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed), 
  # then the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
  ix <- x$getinverse()
  if (!is.null(ix)) {
    message("getting cached data")
    return(ix)
  }
  data <- x$get()
  ix <- solve(data, ...)
  x$setinverse(ix)
  ix

  }



