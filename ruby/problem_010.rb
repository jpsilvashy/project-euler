#! /usr/bin/env ruby

# http://projecteuler.net/problem=10

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require "benchmark"
require_relative "lib/integer"

def array_of_primes_for(val)
  sieve = []
  for i in 2 .. val
    sieve[i] = i
  end
  for i in 2 .. Math.sqrt(val)
    next unless sieve[i]
    (i*i).step(val, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact
end

time = Benchmark.measure do
  primes = array_of_primes_for(2_000_000)
  sum_of_primes = primes.inject {|sum, n| sum + n }
  puts sum_of_primes
end

puts time