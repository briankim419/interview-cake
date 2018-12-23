require 'pry'

def fibo(n)

  if n == 0 || n == 1
    return n
  else
    result = fibo(n - 1) + fibo(n - 2)
    puts result
    result
  end
end

fibo(5)
