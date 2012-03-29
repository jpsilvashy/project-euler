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

end