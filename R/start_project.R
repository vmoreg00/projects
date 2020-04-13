# Start a project
#
# Configure a project directory and all their sub-directories
# according to an homogeneous logical structure.

start_project <- function(subdirs, git = TRUE){
  # Create sub-directories
  if(missing(subdirs)){
    subdirs <- c("data", "results", "reports", "src")
  }
  for(sd in subdirs){
    if(!dir.exists(sd)){
      dir.create(sd)
    }
  }

  # name of the project
  projName <- unlist(strsplit(getwd(), split = "/"))
  projName <- projName[length(projName)]

  # Create README.md file
  write(x = paste0("# ", projName, "\n\n",
                   "Created on: ", Sys.Date()),
        file = "README.md")

  # Init the GIT directory
  if(git){
    git2r::init()
    git2r::add(path = "*")
    git2r::commit(message = "Project start")
  }
}
