#! /usr/bin/env ruby

# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

require "benchmark"

time = Benchmark.measure do

  range = Range.new(1, 100)

  squares = range.map { |x| x**2 }
  squares = squares.inject {|sum, n| sum + n }

  sums = range.inject {|sum, n| sum + n }
  sums = sums ** 2

  difference = sums - squares

  puts difference
end

puts time