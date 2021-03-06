#! /usr/bin/env ruby

# http://projecteuler.net/problem=2

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

require "benchmark"

def fib(n)
  curr = 0
  succ = 1
  total = 0

  while curr < n do
    curr, succ = succ, curr + succ
    total += curr if curr.even?
  end

  puts total
end

time = Benchmark.measure do
  fib 4_000_000
end

puts time

