require 'prime'

def primes(num)
  num.prime_division.reduce([]) do |arr, x| 
    if x.include? 1
      arr << "(#{x[0]})"
    else
      arr << "(#{x[0]}**#{x[1]})"
    end
  end.join
end

puts primes(86240)
