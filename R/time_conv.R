#' @description:  Convert time to UNIX format and the oposite
#' @creation: 2020-02-04
#' @modified: NA
#' @commit: Creation of the function
#' @TODO: - Rd file

epoch_to_unix <- function(epoch, date, tz = "UTC"){
  if(!is.character(epoch)){
    stop("epoch must be character")
  }
  epoch <- unlist(strsplit(epoch, split = " "))
  if(length(epoch) > 2 | length(epoch) == 0){
    stop("epoch must be in the format '%Y-%m-%d %H:%M:%S' or '%H:%M:%S'")
  } else if (length(epoch) == 2){
    date <- epoch[1]
    hms <- epoch[2]
  } else {
    hms <- epoch
    if(missing(date)){
      date <- "1970-01-01"
    }
  }
  time <- as.POSIXct(paste(date, hms), tz = tz, format = "%Y-%m-%d %H:%M:%S")
  time <- as.numeric(time)
  return(time)
}

unix_to_epoch <- function(unix, origin = "1970-01-01", tz = "UTC",
                          returnChar = TRUE){
  epoch <- as.POSIXct(unix, origin = origin, tz = tz)
  if(returnChar){
    epoch <- as.character(epoch)
  }
  return(epoch)
}
