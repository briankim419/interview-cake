require 'pry'

def cake(cap, array)

  if cap <= 0
    return nil
  end

  vfw = 0
  weight = 0
  value = 0
  max_value = 0

  array.each do |cake|
    if cake[1] == 0
      next
    end

    if vfw < (cake[1]/cake[0])
      vfw = (cake[1]/cake[0])
      weight = cake[0]
      value = cake[1]
    end
  end

  num_cakes = cap / weight

  if cap % weight > 0
    cap = cap % weight
    cake(cap, array)
  end

  max_value = num_cakes * value

end

def max_duffel_bag_value(cake_arrays, weight_capacity)

# we make an array to hold the maximum possible value at every
# duffel bag weight capacity from 0 to weight_capacity
# starting each index with value 0
max_values_at_capacities = [0] * (weight_capacity + 1)

(0..weight_capacity).each do |current_capacity|

  # set a variable to hold the max monetary value so far for current_capacity
  current_max_value = 0

  cake_arrays.each do |cake_weight, cake_value|

    # if a cake weighs 0 and has a positive value the value of our duffel bag is infinite!
    if (cake_weight == 0 && cake_value != 0)
      return Float::INFINITY
    end

    # if the current cake weighs as much or less than the current weight capacity
    # it's possible taking the cake would get a better value
    if (cake_weight <= current_capacity)

      # so we check: should we use the cake or not?
      # if we use the cake, the most kilograms we can include in addition to the cake
      # we're adding is the current capacity minus the cake's weight. we find the max
      # value at that integer capacity in our array max_values_at_capacities
      max_value_using_cake = cake_value + max_values_at_capacities[current_capacity - cake_weight]

      # now we see if it's worth taking the cake. how does the
      # value with the cake compare to the current_max_value?
      binding.pry
      current_max_value = [max_value_using_cake, current_max_value].max
      binding.pry
    end
  end

  # add each capacity's max value to our array so we can use them
  # when calculating all the remaining capacities
  max_values_at_capacities[current_capacity] = current_max_value
end

puts max_values_at_capacities[weight_capacity]
return max_values_at_capacities[weight_capacity]
end

cake_arrays = [[7, 160], [3, 90], [2, 15]]
capacity = 7

max_duffel_bag_value(cake_arrays, capacity)
