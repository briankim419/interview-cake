require 'pry'
def reverse_characters(message)

left_index = 0
right_index = message.length - 1

# walk towards the middle, from both sides
  while left_index < right_index

    # swap the left char and right char
    message[left_index], message[right_index] = \
      message[right_index], message[left_index]

    left_index  += 1
    right_index -= 1

  end
end

reverse('hello')
