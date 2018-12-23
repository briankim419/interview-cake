require 'pry'
# def fib(n)
#   if n < 0
#     raise ArgumentError, 'Index was negative. No such thing as a negative index in a series.'
#   end
#
#   # base cases
#   if n == 0 || n == 1
#     return n
#   end
#
#   puts "computing fib(#{n})"
#   result = fib(n - 1) + fib(n - 2)
#   puts result
#   result
# end

fib(4)

def fib(n)
  memo = {}

  if n == 0 || n == 1
    n
  # see if we've already calculated this
  elsif memo.include?(n)
    memo[n]
  else
    result = fib(n - 1) + fib(n - 2)

    # memoize
    memo[n] = result

    binding.pry
    result
  end
end
