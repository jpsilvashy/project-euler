# add some methods to Integer
class Integer

  # is the integer a prime number?
  def is_prime?

    # fail fast if even.
    if self.even?
      return false
    end

    for d in 2..(Math.sqrt(self))
      if (self % d) == 0
        return false
      end
    end
    true
  end

  def sum_of_primes
    total = 0
    sieve = []

    for i in 2 .. self
      sieve[i] = i
    end

    for i in 2 .. Math.sqrt(self)
      if sieve[i]
        total += sieve[i]
      end

      next unless sieve[i]
      (i*i).step(self, i) do |j|

        if sieve[j]
          total += sieve[j]
        end

        sieve[j] = nil
      end
    end
    sieve.compact

    puts total
  end

end