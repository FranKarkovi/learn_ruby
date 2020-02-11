#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  total = 0
  numbers.each { |number| total += number }
  total
end

def multiply(numbers)
  total = 1
  numbers.each do |number|
    total *= number
  end
  total
end

def power(base, exponent)
  base ** exponent
end

def factorial(n)
  factorial = 1
  for i in 1..n do
    factorial *= i
  end
  factorial
end