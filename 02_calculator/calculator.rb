def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(nums)
  nums.inject(0, :+)
end

def multiply(*nums)
  nums.inject(:*)
end

def power(base, exp)
  base ** exp
end

def factorial(num)
  num == 0 ? 0 : (1..num).inject(:*)
end
