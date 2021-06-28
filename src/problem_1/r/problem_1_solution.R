# "below 1000" => largest number to consider is 999
upper_lim <- 999

total <- 0

# loop through all numbers below 1000, adding to sum if number is divisible
# by 3 or 5
for(i in 1:upper_lim) {
  if(i %% 3 == 0 | i %% 5 == 0) {
    total <- total + i
  }
}

print(total)