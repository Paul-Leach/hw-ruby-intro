# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  tot = 0
  arr.each do |i| tot += i end
  tot
end

def max_2_sum arr
  t = arr.sort.reverse
  return 0 if  t[0] == nil
  return t[0] if t[1] == nil
  return t[0] + t[1]
end

def sum_to_n? arr, n
  arr.each_with_index { |x, ix|
    arr.each_with_index {|y, iy| 
    return true if ix != iy && x+y == n }
  }
  return false
end

# Part 2

def hello(name)
  "Hello, " + name.to_s
end

def starts_with_consonant? s
  /^[a-z&&[^aeiou]]/i =~ s
end

def binary_multiple_of_4? s
  s != '' &&
  (/^[01]*$/ =~ s) != nil &&
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn == '' || price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    sprintf "$%.2f", price.round(2)
  end
end
