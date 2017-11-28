print("Hello world")

x = c(1.3,1.2,1.3,NA,1.4,1.5)
plot(x,ylab="EUR prices")
print(is.na(x))

homeuser=getwd()
print(homeuser)


#update.packages()
#install.packages("ggplot2",dependencies=TRUE)
#library(ggplot2)

# Language Features: Functions, Assignment, Arguments, and Types
#Filter prices:
print(x[x > 1.3])

y <- diff(log(x))
print(y)
print(round(y,3))


#g(x,y) is a power function:
g <-function(x,y=5) {return(x^y) }
g(4,6)
g(3,4)


#R has four assignment operators.
x <- 1
assign("x",2)
print(x)

f <-function(x){x = 4; print(x)}
print(f(x))
print(x)
#The fourth type is "<<-"
x <<-2


print(typeof(x))

print(typeof(f))

#Classic if-else:
call_type = 2
if(call_type == 1) {
    str = "f(2)"
} else {
    str = "g(3)"
}
print(eval(parse(text=str)))
print(g(3))

#Not so classic if-else function:
a = ifelse(call_type == 1, eval(parse(text="f(2)")), eval(parse(text="g(2)")))
print(a)

#Functional nature:
vec = c(1:3)
print( sqrt(vec))
print(sapply(vec,sqrt))
print(sapply(vec,f))


#Language Features: Binding and Arrays
a = rep(4, 5)
b = c(4, 4, 4, 4, 4)

print("Create two column matrix:")
A = cbind(rep(x,length(y)),y)
print(A)
print("==========================")
B = rbind(rep(x,length(y)),y)
print(B)
