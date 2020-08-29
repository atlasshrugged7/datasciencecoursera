## Put comments here that give an overall description of what your
## functions do

## This function gets and sets the initial value of the martrix and the inverse value

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set<- function(y){
		x<<-y
		m<<-NULL
	}
	get<- function() x
	setinv<-function(solve)m<<- solve
	getinv<- function() m
	list(get=get,set=set,setinv=setinv,getinv=getinv)
}


## This function checks if the inverse already exists, otherwise it creates it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getinv()
	if(!is.null(m)){
		message("getting the inverse matrix")
		return(m)
	}
	data<- x$get()
	m<-solve(data,...)
	x$setinv(m)
	m
}
