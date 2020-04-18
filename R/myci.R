#' Confidence Interval Function
#'
#' @param x
#'
#' @return lower and upper bounds of a confidence interval
#' @export
#'
#' @examples
myci=function(x){
#95% ci
para=length(x)-1
t=qt(0.975,para)
ci=c()
ci[1]=mean(x)-t*sd(x)/sqrt(length(x))
ci[2]=mean(x)+t*sd(x)/sqrt(length(x))
ci
}
