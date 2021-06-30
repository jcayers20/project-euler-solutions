# get smallest prime factor of a given integer
smallest_prime_factor <- function(n) {
  
  for(i in 2:n) {
    
    # first number evenly divisible by n will be smallest prime factor
    if(n %% i == 0) {
      return(i)
    }
  }
}

# get prime factorization of a number
prime_factorization <- function(n) {
  factors <- c()
  quotient <- n
  
  while(quotient > 1) {
    fac <- smallest_prime_factor(quotient)
    factors <- append(factors, fac)
    quotient <- quotient / fac
  }
  
  return(factors)
}

factorization <- prime_factorization(600851475143)
print(max(factorization))