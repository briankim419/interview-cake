require 'pry'

def sorted_arrays(a, b)

c_length = a.lenth + b.length
c = [nil] * c_length

a_index = 0
b_index = 0
c_index = 0

while c_index < c_length

  is_a_done = a_index >= a.length
  is_b_done = b_index >= b.length

  if !is_a_done && (is_b_done || (a[a_index] < b[b_index]))

    c[c_index] = a[a_index]
    a_index += 1
  else
    c[c_index] = b[b_index]
    b_index += 1
  end

  c_index += 1
end

return c
end
