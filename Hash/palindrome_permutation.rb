require 'pry'
def has_palindrome_permutation(the_string)

# track characters we've seen an odd number of times
unpaired_characters = {}

(0...the_string.length).each do |i|
  char = the_string[i]

  if unpaired_characters.values.include? char
    unpaired_characters.delete(i)
  else
    unpaired_characters[i] = (char)
  end
end

binding.pry
return unpaired_characters.length <= 1
end

a = 'civic'
has_palindrome_permutation(a)
