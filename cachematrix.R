## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<-function(m=matrix()){
	z<-NULL
	set<-function(y) {
		m<<-y
		z<<-NULL
		}
		get<-function() m
		setinv<-function(solve) z<<-solve
		getinv<-function() z
		list(set=set, get=get, setinv=setinv, getinv=getinv)
	}


## Write a short comment describing this function

cacheSolve<-function(m,...) {
	n<-m$getinv()
	if(!is.null(n)) { message("getting cached matrix")
		return(n)}
		data<-m$get()
		n<-solve(data)
		m$setinv(n)
		return(n)
}
