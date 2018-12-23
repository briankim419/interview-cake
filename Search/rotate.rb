require 'pry'

def find_rotation_point(words)
first_word = words.first

floor_index = 0
ceiling_index = words.length - 1

while floor_index < ceiling_index

  # guess a point halfway between floor and ceiling
  guess_index = (floor_index + ceiling_index) / 2

  # if guess comes after first word or is the first word
  if words[guess_index] >= first_word
    # go right
    floor_index = guess_index
  else
    # go left
    ceiling_index = guess_index
  end

  # return if floor and ceiling have converged
  # between floor and ceiling is where we flipped to the beginning
  # so ceiling is alphabetically first
  return ceiling_index if floor_index + 1 == ceiling_index
end
end

words = [
  'ptolemaic',
  'retrograde',
  'supplant',
  'undulate',
  'xenoepist',
  'asymptote',
  'babka',
  'banoffee',
  'engender',
  'karpatka',
  'othellolagkage',
]

find_rotation_point(words)
