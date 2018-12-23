require 'pry'

def stock(prices)

min = prices[0]
prof = prices[1] - prices[0]

prices[1..-1].each do |num|

  if num <= min
    prof = num - min > prof ? num - min : prof
    min = num
  else
    prof = num - min > prof ? num - min : prof
  end
end
binding.pry
puts prof
end



a = [12, 8, 6, 3, 1]

stock(a)
