
# Personnel Class ---------------------------------------------------------
library(R6)
personnel_class <- R6Class(
  
  classname = "dtPersonnel", 
                  
  public= list(
    
    fist_name = NULL, #first name
    last_name= NULL, #last_name
    type = NULL, #person type
    email="test@test.com", #email
    affiliation= "", #affiliation
    orcid_id="", #ORCID id

  initialize = function(fist_name="", last_name = "", type="", 
                        email="test@test.com", affiliation= "", orcid_id="") {
    
    self$fist_name <- fist_name
    self$last_name <- last_name #last_name
    self$type <- type #person type
    self$email <- email #email
    self$affiliation <- affiliation #affiliation
    self$orcid_id <- orcid_id #ORCID id
  },
  print = function(...) {
    cat("Person: \n")
    cat("First Name: ", self$fist_name, "\n", sep = "")
    cat("  Age:  ", self$last_name, "\n", sep = "")
    invisible(self)
  }
))

person_object <- personnel_class$new("Omar")

### Generic function to invoke the class troguh user interface

new_personnel <- function(fist_name="",last_name = "", type="", 
                       email="test@test.com", affiliation= "", 
                       orcid_id=""){
  
  #stopifnot(is.function(crop))
  personnel <- personnel_class$new(
    fist_name= fist_name,
    last_name = last_name, 
    type=type, 
    email=email, 
    affiliation= affiliation, 
    orcid_id=orcid_id
  )
  personnel
}
pl <- new_personnel("omar","benites")
