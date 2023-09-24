require 'prime'

def primeFactors(n)
  n.prime_division.map {|factor, times| times == 1 ? "(#{factor})" : "(#{factor}**#{times})"}.join
end

puts primes(86240)

