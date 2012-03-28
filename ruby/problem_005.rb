#! /usr/bin/env ruby

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require "benchmark"

# add some methods to Integer

ARRAY = (1..20).to_a.reverse

class Integer
  def divisible_by_all_in_limit?

    ARRAY.each do |num|
      if (self % num == 0) == false
        return false
      end

      true
    end

  end
end

time = Benchmark.measure do
  i = 20
  until i.divisible_by_all_in_limit?
    i += 20
  end
  puts i
end

puts time