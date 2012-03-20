#! /usr/bin/env ruby

# http://projecteuler.net/problem=3

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require "benchmark"

val = ARGV[0].to_i

def factors_of(int)
  factors = []

  (1..int).each do |x|
    if (int % x) == 0
      factors << x
    end
  end

  factors
end

time = Benchmark.measure do

  factors_of(val).each do |f|
    if f %

    end
  end

end

puts time

# if factors_of(val).length == 2
#   puts "is prime"
# end
