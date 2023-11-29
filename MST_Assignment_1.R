########## 1 #############

c <- c(5,10,15,20,25,30)
cat("Max of the vector is : ",max(c))
cat("Min of the vector is : ",min(c))



########## 2 #############

number <- as.integer(readline(prompt = "Enter a Number ≥ 0… to get its Factorial : "))
if(number < 0){
  cat("Error: Entered number isn't ≥ 0")
}else if(number == 0){
  cat("Factorial of 0 is : 1")
} else {
  factorial <- 1
  for(i in 2:number){
    factorial <- factorial*i
  }
  cat("Factorial of ",number," is : ",factorial)
}



########## 3 #############

n <- as.integer(readline(prompt = "Enter the number till you want fibonacci sequence to be displayed : "))
fib0 <- 0
fib1 <- 1

cat("First ",n," numbers of Fibonacci Sequence are : ")

for(i in 1:n){
  cat(fib0," ")
  next_term <- fib0+fib1
  fib0 <- fib1
  fib1 <- next_term
}



########## 4 #############

num1 <- as.integer(readline(prompt = "Enter the first number : "))
num2 <- as.integer(readline(prompt = "Enter the second number : "))
operator <- readline(prompt = "Enter the operator (+, -, *, /): ")

if(operator == '+'){
  cat("Addition result is ",num1+num2)
}else if (operator == '-'){
  cat("Subtraction result is ",num1-num2)
}else if (operator == '*'){
  cat("Multiplication result is ",num1*num2)
}else if (operator == '/'){
  cat("Division result is ",num1/num2)
}else {
  cat("Error (enter valid Operator)")
}



########## 5 #############

x <- c(1, 2, 3, 4, 5,6)
y <- c(2, 4, 8, 8, 10,18)
plot(x, y, type = "l", pch = 6, col = "gold", main = "My graph name")

x <- seq(0, 2 * pi, length.out = 100)
y <- sin(x)
plot(x, y, type = "l", col = "red", main = "Line Plot")

data <- rnorm(1000)
hist(data, breaks = 20, col = "lightblue", main = "Histogram")

data <- c(10, 15, 7, 22, 8)
barplot(data, names.arg = c("A", "B", "C", "D", "E"), col = "green", main = "Bar Plot")

data <- c(25, 40, 15, 20)
labels <- c("A", "B", "C", "D")
pie(data, labels = labels, col = rainbow(length(data)), main = "Pie Chart")

data <- list(a = rnorm(100), b = rnorm(100, mean = 2), c = rnorm(100, mean = -2))
boxplot(data, col = c("red", "green", "blue"), main = "Boxplot")

data <- data.frame(x = rnorm(100), y = rnorm(100), z = rnorm(100))
pairs(data)