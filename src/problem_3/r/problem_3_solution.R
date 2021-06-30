get_primes <- function(upper_lim) {
  primes <- c(2)

  for(i in 3:upper_lim) {
    if(all(i %% primes != 0)) {
      primes <- append(primes, i)
    }
  }

  return(primes)
}