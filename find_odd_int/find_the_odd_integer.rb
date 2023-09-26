def find_it(seq)
  seq.tally.select { |k, v| v.odd? }.first.first
end

arr = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]
puts find_it(arr)

# *** irb testing *** 
# irb(main):087:0> seq = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]
# => [20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5]
# irb(main):091:0> seq.tally
# => {20=>2, 1=>2, -1=>2, 2=>2, -2=>2, 3=>2, 5=>3, 4=>2}
# irb(main):088:0> answer = seq.tally.select { |k, v| v.odd? }
# => {5=>3}
# irb(main):089:0> answer.first
# => [5, 3]
# irb(main):090:0> answer.first.first
# => 5