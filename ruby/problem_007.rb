#! /usr/bin/env ruby

# http://projecteuler.net/problem=7

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require "benchmark"

val = ARGV[0].to_i

# add some methods to Integer
class Integer

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

time = Benchmark.measure do

  int = 1
  primes_found = 0

  until primes_found == 10_001 do
    if int.is_prime?
      puts "#{int} is the #{primes_found} prime."
      primes_found += 1
    end
    int += 1
  end

  puts int

end

puts time