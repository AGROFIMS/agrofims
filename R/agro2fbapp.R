#Table
library(gsheet)
datos <- gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1nx1MDdWkc57dIIcME89Pao_7dEQdvoZQoYrIDB_KrZA/edit?usp=drive_web&ouid=112193923761283870355")





agro2FbApp <- function(trait_dt=UN,
                       observationVariables="TraitName",
                       defaultValue="",
                       traitDataType=""
                       ){
  
  trait <- trait_dt[,observationVariables]
  defaultValue <- 
  observationUnitName <- 
  traitDataType <- 
    
}


convertDataType <- function(app_format=c("FbApp","KDSmart"), 
                            TraitDataType,
                            TraitValidation){
  
  app_format <- match.arg(app_format)
  
  if(app_format=="FbApp"){
    
    if(trait_type=="DECIMAL"){
      
        traitMin <- "" #extract lower bound value
        traitMax <- "" #extract upper bound value
       
    } else if(trait_type=="CATEGORICAL"){
      traitCategory <- "" #extract category
      
    } else if(trait_type=="DATE"){
      #
      
    } else if(trait_type=="TEXT"){
      ""
      #
    }
  }
}
  
  






