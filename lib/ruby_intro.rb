# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 1
    return arr[0]
  elsif arr.length > 1
    arr.sort!
    return arr[-1] + arr[-2]
  else
    return 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length > 0
    arr.sort!
    j = arr.length - 1
    i = 0
    while i<j
      if arr[i] + arr[j] < n
        i = i + 1
      elsif arr[i] + arr[j] > n
        j = j - 1
      else
        return true
      end
    end
    return false
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE 
  if s =~ /^[[:alpha:]].*$/
    if ['a','e','i','o','u','A','E','I','O','U'].include? s[0]
      return false
    else
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[10]*00$/ || s == "0"
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError.new("Invalid arguments")
    end
      
    @price = price
    @isbn = isbn
  end
  
  def price_as_string()
    "$%.2f" % price
  end
end
