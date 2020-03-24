#Como usar a method dispatch for R6 classes

R6list <- R6Class(
  "R6list",
  public = list(
    field1 = "A",
    field2 = "B",
    initialize = function(x,y) {
      self$field1 <- x
      self$field2 <- y
    },
    as.list = function() {
      list(
        "field1" = self$field1,
        "field2" = self$field2
      )
    }
  )
)

as.list.R6list <- function(x, ...) {
  x$as.list()
}

mylist1 <- R6list$new("A","B")
mylist2 <- R6list$new("1","2")
as.list(mylist1)