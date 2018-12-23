require 'pry'

def get_permutations(string)

# base case
if string.length <= 1
  return [string]
end

all_chars_except_last = string[0..-2]
last_char = string[-1]

# recursive call: get all possible permutations for all chars except last
permutations_of_all_chars_except_last = get_permutations(all_chars_except_last)

# put the last char in all possible positions for each of the above permutations
permutations = []
permutations_of_all_chars_except_last.each do |permutation_of_all_chars_except_last|
  (0..all_chars_except_last.length).each do |position|
    permutation = permutation_of_all_chars_except_last[0...position] + last_char + permutation_of_all_chars_except_last[position..-1]
    permutations << (permutation)
  end
end

binding.pry
return permutations
end




def all_perm(string)

if string.length <= 1
  return [string]
end

base_word = string[0..-2]
last_char = string[-1]

permutations_except_last = all_perm(base_word)

permutations = []

permutations_except_last.each do |perm|
  (0..base_word.length).each do |position|
    permutation = perm[0...position] + last_char + perm[position..-1]
    permutations << permutation
  end
end

binding.pry
return permutations

end

all_perm('cat')
