require 'pry'

def fib(n)

# edge cases:
if n < 0
  raise ArgumentError, "Index was negative. No such thing as a negative index in a series."
elsif n == 0 || n == 1
  n
else

  # we'll be building the fibonacci series from the bottom up
  # so we'll need to track the previous 2 numbers at each step
  prev_prev = 0  # 0th fibonacci
  prev = 1       # 1st fibonacci

  (n - 1).times do
    prev_prev, prev = prev, prev + prev_prev
  end

  prev
  puts prev
end
end

fib(3)
