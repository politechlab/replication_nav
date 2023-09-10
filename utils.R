simplified<-function(to_remove){
  
  to_remove[!grepl('schoolId', names(to_remove))]
}

get_table <- function(model) {
    model = list(model)
    coefOR2 <- list(simplified(lapply(model, function(x) exp(coef(x)))[[1]]))
    
    seOR2 <- simplified(lapply(model, function(x) exp(coef(x)) * summary(x)$coef[, 2])[[1]])
    upperCI <- simplified(lapply(model, function(x) exp(coef(x)+1.96* summary(x)$coef[, 2]))[[1]])
    lowerCI <- simplified(lapply(model, function(x) exp(coef(x)-1.96* summary(x)$coef[, 2]))[[1]])
   
    p2 <- simplified(lapply(model, function(x) summary(x)$coefficients[, 4])[[1]])

    temp = cbind(data.frame(lowerCI),data.frame(upperCI))
    stargazer(model,header=FALSE,  align=T, coef = coefOR2,  ci.custom = list(temp),
              omit = c("schoolId","Constant","(Intercept)" ),type="text")
}
