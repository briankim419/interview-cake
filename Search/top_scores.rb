require 'pry'

def top_score(array, num)

index = [0] * (num + 1)
sorted = []

array.each do |score|
  index[score] += 1
end

index.each_with_index do |freq, idx|
  for x in (0...freq)
    sorted << idx
  end
end

puts sorted
end


v = 100
a = [37, 89, 41, 65, 91, 53, 1, 2, 1]

top_score(a, v)
