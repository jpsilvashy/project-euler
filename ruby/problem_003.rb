#! /usr/bin/env ruby

# http://projecteuler.net/problem=3

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require "benchmark"

val = ARGV[0].to_i

# add some methods to Integer
class Integer

  # return array of factors
  def factors
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |factors, i|
      factors << i
      factors << self/i unless i == self/i
      factors
    end.sort
  end

  # is the integer a prime number?
  def is_prime?
    for d in 2..(Math.sqrt(self))
      if (self % d) == 0
        return false
      end
    end
    true
  end

end

def prime_factors_for(int)
  # get the factors for the int provided
  factors = int.factors

  # check if the factors are prime, otherwise pop them
  until factors.last.is_prime?
    factors.pop
  end

  # return the last item in the array because it's prime
  factors.last
end

time = Benchmark.measure do
  puts prime_factors_for(val)
end

puts time
