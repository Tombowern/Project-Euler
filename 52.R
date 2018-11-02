start <- Sys.time()
dank <- 0


while ( TRUE ) {
  dank <- dank + 1
  if ( strsplit(as.character(dank), split=NULL)[[1]][1] != "1" ) {
    next
  }
  danknum <- paste(sort(strsplit(as.character(dank), split=NULL)[[1]]),
                  collapse="")
  all_match <- TRUE
  for ( multiple in seq.int(2, 6) ) {
    multiple_danknum <- paste(sort(strsplit(as.character(dank * multiple),
                                           split=NULL)[[1]]), collapse="")
    if ( danknum != multiple_danknum ) {
      all_match <- FALSE
      break
    }
  }
  if ( all_match ) {
    break
  }
}
Sys.time()-start

dank

