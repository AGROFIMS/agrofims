#Table
library(gsheet)
datos <- gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1nx1MDdWkc57dIIcME89Pao_7dEQdvoZQoYrIDB_KrZA/edit?usp=drive_web&ouid=112193923761283870355")

# Define the trait class --------------------------------------------------
library(R6)
.objTrait <- R6::R6Class(
  "traitAgro", #in camellCase
  private= list(
    #crop="",
    group="",
    subgroup="",
    ..observationVariable = NULL,
    ..observationUnitName= NULL,
    ..observationExpUnitName= "plot",
    ..traitDataType= "numerical",
    ..method= "Collected with a scale (balanza)" ,  
    ..description= "Method collected in the harvest season",
    ..observationTimming= "1",
    ..observationNumberExpUnit= "2" #
  ),
  public = list(
    
    crop = "",
    
    
    initialize = function(crop, observationVariable=NA,observationUnitName=NA,
                          observationExpUnitName=NA){
      
      if(missing(observationVariable)){
        self$crop <- crop
      }
      if(missing(observationVariable)){
        private$..observationVariable <- observationVariable
      }
      if(missing(observationUnitName)){
        private$..observationUnitName <- observationUnitName
      }
      if(missing(observationExpUnitName)){
        private$..observationExpUnitName <- observationExpUnitName
      }
    }
  ),
    active = list(
      observationVariable = function(value){
        if(missing(value)) {
          private$..observationVariable
         } else {
           private$..observationVariable <- value 
        } 
      }
    )
)

#
traiObj <- .objTrait$new(crop="Cassava")
traiObj$..observationVariable #null because it is private
traiObj$observationVariable <- "Yield" #SETTER 
traiObj$observationVariable #GETTER
#

quantitative_trait <- R6::R6Class(
  "quantitative",
   inherit = "traitAgro",
  private = list(),
  public = list(
    cm_table = data.frame(),
    
    get_min = function(cm_table,crop, observationVariable){
      dplyr::filter(cm_table,)
    }
    get_max = function(){} 
  )
)

cualitative_trait <- R6::R6Class(
  classname = "cualitative",
  inherit = "traitAgro",
  private = list(),
  public = list(
    get_min = function(cm_table, ){}
    get_max = function(){} 
  )
  
  
)

### Generic function to invoke the class troguh user interface

new_trait <- function(crop="amarrillo"){
  
  #stopifnot(is.function(crop))
  Trait <- .objTrait$new(
    crop = crop
  )
  Trait
}
pl <- new_trait("sweetpotato")







