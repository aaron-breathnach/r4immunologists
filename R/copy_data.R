#' Copy tutorial data to the Desktop
#'
#' Copies the data used in the R for Immunologists tutorial to the Desktop
#' 
#' @return None
#' 
#' @examples
#' r4immunologists::copy_data()
#' 
#' @export
copy_data <- function() {
  
  os <- stringr::str_to_lower(Sys.info()[["sysname"]])
  
  if (os == "darwin") {
    wd <- "~/Desktop/r_for_immunologists/"
  } else {
    wd <- file.path(Sys.getenv("USERPROFILE"), "Desktop/r_for_immunologists/")
  }
  
  if (!dir.exists(wd)) {
    dir.create(wd, recursive = TRUE)
  }
  
  dat <- system.file("tutorials/r_for_immunologists/",
                           package = "r4immunologists")
  
  cmd <- paste("cp -r", dat, wd)
  
  system(cmd)
  
  setwd(wd)
  
}
