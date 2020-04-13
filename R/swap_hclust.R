# Function that allows to swap to clusters in a 'hclust' object
# Author: Moreno-González, V.
# Creation Date: 2018-11-05
swap_hclust <- function(x){
  if (class(x) != "hclust"){
    stop("x must be 'hclust'", call. = T)
  }
  cat(rep("*", 80), sep = "")
  cat("\n**", rep(" ", 29), "Swapping clusters", rep(" ", 30), "**\n", sep = "")
  cat(rep("*", 80), sep = "")

  cat("\n\nOn the Plot Window...")
  cat("\n>>> SELECT THE 2 CLUSTERS YOU WANT TO SWAP <<<")
  cat("\n>>> To exit: Press ESC or Finish without clusters selected <<<\n")

  while(TRUE){
    # Selection of the clusters
    plot(x, hang = -1)
    clusters <- identify(x = x, N = 2, MAXCLUSTER = length(x$height))
    if(length(clusters) == 0){
      return(x)
    } else {
      if(length(clusters) == 1){
        cat("WARNING: YOU ONLY SELECTED ONE CLUSTER!\n")
        next
      }
    }
    # Change the order
    first1 <- min(match(clusters[[1]], x[["order"]]))
    last1 <- max(match(clusters[[1]], x[["order"]]))
    first2 <- min(match(clusters[[2]], x[["order"]]))
    last2 <- max(match(clusters[[2]], x[["order"]]))
    cat(first1, last1, first2, last2)                   ######################
    if(first1 > first2){ # If the order is inverteded
      tmp.f <- first1
      tmp.l <- last1
      first1 <- first2
      last1 <- last2
      first2 <- tmp.f
      last2 <- tmp.l
    }
    if(first2 != (last1 + 1)){ # If clusters are separated
      cat("WARNING: SELECTED CLUSTERS DO NOT HAVE A COMMON ROOT\n")
      next
    }
    if(length(unlist(clusters)) == length(x[["order"]])){
      p <- length(clusters[[1]])
      c1 <- first1:last1
      c2 <- first2:last2
      x[["order"]] <- x[["order"]][c(c2, c1)]
    } else {
      if(first1 == 1){ # If clusters are at the beggining ...
        c1 <- first1:last1
        c2 <- first2:last2
        c3 <- (last2 + 1):length(x[["order"]])
        x[["order"]] <-x[["order"]][c(c2, c1, c3)]
      } else {
        if(last2 == length(x[["order"]])){ # ... at the end ...
          c1 <- 1:(first1 - 1)
          c2 <- first1:last1
          c3 <- first2:last2
          x[["order"]] <-x[["order"]][c(c1, c3, c2)]
        } else { # ... or in the middle
          c1 <- 1:(first1 - 1)
          c2 <- first1:last1
          c3 <- first2:last2
          c4 <- (last2 + 1):length(x[["order"]])
          x[["order"]] <-x[["order"]][c(c1, c3, c2, c4)]
        }
      }
    }
    plot(x, hang = -1)
  }
  return(x)
}
