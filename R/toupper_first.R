# toupper_first.R
#
# Change only the first letter of a character string to upper case

toupper_first <- function(x){
  x <- unlist(strsplit(x, ""))
  x[1] <- toupper(x[1])
  x <- paste0(x, sep = "", collapse = "")
  return(x)
}
