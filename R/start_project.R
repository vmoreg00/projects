# Start a project
#
# This function starts a project directory and all their sub-directories
# according to an homogeneous logical structure.

start_project <- function(name, path = "./"){
  if(missing(name)){
    stop("name must be provided")
  }
  if(path != "./"){
    if(!endsWith(path, "/")){
      path <- paste0(path, "/")
    }
  }
  project <- paste0(path, name)
  if(dir.exists(project)){
    warning("Project already exists.")
  } else {
    for(i in c("data", "results", "reports", "src")){
      if(!dir.exists(paste0(c(project, i), collapse = "/"))){
        dir.create(paste0(c(project, i), collapse = "/"), recursive = T)
      }
    }
  }
}
