# hms_to_unix.R
#
# Convert time in HH:MM:SS format to UNIX format
#

hms_to_unix <- function(hms, date = NULL){
  if(is.null(date)){
    date <- "1970-01-01"
  }
  time <- as.POSIXct(paste(date, hms), tz = "UTC", format = "%Y-%m-%d %H:%M:%S")
  time <- as.numeric(time)
  return(time)
}
