require 'pry'

def counting_sort(the_array, max_value)

# array of 0's at indices 0..max_value
num_counts = [0] * (max_value+1)

# populate num_counts
the_array.each do |item|
  num_counts[item] += 1
end
binding.pry
# populate the final sorted array
sorted_array = []

# for each item in num_counts
num_counts.each_with_index do |count, item|

  # for the number of times the item occurs
  (0...count).each do |time|

    # add it to the sorted array
    sorted_array.push(item)
    binding.pry
  end
end

return sorted_array
end

v = 100
a = [37, 89, 41, 65, 91, 53]

counting_sort(a, v)
