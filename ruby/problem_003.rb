#! /usr/bin/env ruby

# http://projecteuler.net/problem=3

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require "benchmark"

val = ARGV[0].to_i

def is_prime?(n)
  for d in 2..(Math.sqrt(n))
   if (n % d) == 0
    return false
  end
end

true
end

time = Benchmark.measure do
  count = val
  val.times do
    if count.even?
      count -= 1
    else
      if is_prime?(count) == true
        puts "\n#{count} is prime!"
        break
      end
      print '.'
      count -= 2
    end
  end
end

puts time