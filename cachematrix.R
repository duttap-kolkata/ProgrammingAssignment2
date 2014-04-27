## Put comments here that give an overall description of what your
## functions do

#The assignment of  Inverse  is done what  I have been asked to do . No additional  features  are being added .But what we  #could  be  some  additional  features in the makeCacheMatrix.R  check whether matrix is invertible or nonsingular .

# check whether  matrix  is square matrix
#If (ncol=nrow)
#print “Square matrix”
#else
#print” not a square  marix”
#exit()
#If  square  then check determinant  is zero
#If(det(A)=0)
#Print “ can not  get  any inverse matrix()”
#Exit()
#Final  check A.A-1=A-1.A=I
#B<-Solve(A)
#C<-B%%A
#D<-A%%B
#Check diag(C) and Diag(D) are both Identity matrix 

#These three checks could have incorporated in the makeCacheMatrix.R but  it appears to me objective  of this exercise  is #different . The objective is whether whole functionality recalculates  previously  calculated inverse matrix or throws  from #cache memory.



## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#function requires matrix  as parameter#
       m <- NULL
#set M as  NULL
        set <- function(y) {
                x <<- y
               m <<- NULL
        }
	
				
        get <- function() x
        setInverse <- function(solve) m <<- solve

        getInverse<- function() {
					m
			}
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
         m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m

}
