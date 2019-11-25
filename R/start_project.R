# Start a project
#
# This function starts a project directory and all their sub-directories
# according to an homogeneous logical structure.

start_project <- function(name = NULL, path = "./"){
  if(is.null(name)){
    stop("name must be provided")
  }
  if(path != "./"){
    if(!endsWith(path, "/")){
      path <- paste0(path, "/")
    }
    name <- name(paste0(path, name))
  }
  for(i in c("data", "results", "reports", "src")){
    if(dir.exists(paste0(name, i, sep = "/"))){
      dir.create(paste0(name, i, sep = "/"))
    }
  }
}
