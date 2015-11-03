# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.reduce(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  return false if arr.empty?
  arr.permutation(2).each do |p|
    return true if p.reduce(:+) == n
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{ name }"
end

def starts_with_consonant? s
  s =~ /^[a-z&&[^aeiou]]/i ? true : false
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+$/
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError, 'isbn cannot be empty' if isbn.empty?
    raise ArgumentError, 'price cannot be <= 0' if price <= 0
    @isbn  = isbn
    @price = price
  end
  
  def price_as_string
    '%s%.2f' % ['$', self.price]
  end
end
