# hms_to_unix.R
#
# Convert time in HH:MM:SS format to UNIX format
#

hms_to_unix <- function(hms, date = NULL){
  if(is.null(date)){
    date <- "01-01-1970"
  }
  time <- as.POSIXct(paste(date, hms), tz = "UTC", format = "%d-%m-%Y %H:%M:%S")
  time <- as.numeric(time)
  return(time)
}
