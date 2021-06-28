# first two Fibonacci numbers are 1 and 2
fibs <- c(1, 2)

while(sum(tail(fibs, 2)) < 4000000) {
  fibs <- append(fibs, sum(tail(fibs, 2)))
}

total <- 0

for(i in fibs) {
  if(i %% 2 == 0) {
    total <- total + i
  }
}