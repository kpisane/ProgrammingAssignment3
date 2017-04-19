rankall<-function(outcome, num="best"){
  #read in data
  data <- read.csv("outcome-of-care-measures.csv")
  data.split <- split(data, data$State)
  lapply(data.split, rankhospital, outcome, num)
}