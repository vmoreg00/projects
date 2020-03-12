translate_color <- function(color){
  eng <- c("black", "grey", "white", "red", "pink", "green", "blue", "purple", "brown", "orange", "yellow")
  spa <- c("negr[oa]", "gris", "blanc[oa]", "roj[oa]", "rosa", "verde", "azul", "morad[oa]", "marr[oó]n", "naranja", "amarill[oa]")

  change <- FALSE
  for(i in 1:length(spa)){
    g <- grep(pattern = spa[i],
              x = color,
              ignore.case = TRUE)
    if(length(g) > 0){
      color <- eng[i]
      change <- TRUE
      break
    }
  }

  if(!change){
    stop("Colour '", color, "' not in dictionary")
  }

  return(color)
}
