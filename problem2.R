SimulateFunc <- function (p, q, nreps) {
  #count for x1 not equal to x2 
  resultval  <-  0
  num_col_0	<-	0
  num_col_1	<-	0
  num_col_2	<-	0

  for ( i in 1 : nreps) {
    
    # at epoch  1
    #no message attempted to send 
    NumSent <- 0 
    # number of collisions here 
    num_col <- 0
    #  simulate 
    for ( j in 1 : 2 ) {
      if ( runif( 1 ) < p) NumSent <- NumSent + 1
    }
    if ( NumSent == 1 ) X1 <- 1
    if ( NumSent == 0 ) X1 <- 2
    if ( NumSent == 2 ) {
      X1  <- 2
      num_col <- num_col	+ 1
    }		
    
    #	at epoch  2	
    # if X1 = 1
    # one node generate a new message	
    ActiveNum  <-  X1	
    if ( X1 == 1 &&  runif( 1 ) < q)  
      ActiveNum <- ActiveNum	+	1
    
    # check if send or not 
    if  ( ActiveNum  ==  1 )		
    {		
      if  ( runif( 1 )  < p)  X2  <- 0		
      else  X2  <- 1		
    }		
    else  {  #  is the active number is 2		
      NumSent <- 0	
      for ( i in 1 : 2 ) {		
        if ( runif( 1 ) < p) 
          NumSent <- NumSent + 1		
      }		
      if ( NumSent == 1 ) X2 <- 1		
      if ( NumSent == 0 ) X2 <- 2		
      if ( NumSent == 2 ) {		
        X2 <- 2		
        num_col <- num_col + 1		
      }		
    }		
    if ( X1 != X2 ) {	
      # increment our result as when x1!=x2 
      resultval  <-  resultval  +  1		
      
      if	( num_col	==	0 ) num_col_0	<-	num_col_0	+	1
      if	( num_col	==	1 ) num_col_1	<-	num_col_1	+	1
      if	( num_col	==	2 ) num_col_2	<-	num_col_2	+	1
    }								
  }									
  # print our results	
  
  cat(" P(X1!=X2) =	", resultval / nreps , "\n")
  cat(" P( C=	0|X1!=X2 ):"	,	num_col_0	/	resultval	,	"\n")
  cat(" P( C=	1|X1!=X2 ):"	,	num_col_1	/	resultval	,	"\n")
  cat(" P( C=	2|X1!=X2 ):"	,	num_col_2	/	resultval	,	"\n")
}													

SimulateFunc(0.4,0.8,100000)



