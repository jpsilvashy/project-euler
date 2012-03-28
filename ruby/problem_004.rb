#! /usr/bin/env ruby

# http://projecteuler.net/problem=4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

require "benchmark"

# add some methods to Integer
class Integer

  # is the integer a palindrome?
  def is_palindromic?
    self.to_s == self.to_s.reverse!
  end
end

time = Benchmark.measure do
  palindromes = []

  999.downto(100).each do |i|
    999.downto(100).each do |j|
      if (i * j).is_palindromic? == true
        palindromes << i * j
      end
    end
  end

  puts palindromes.max

end

puts time
