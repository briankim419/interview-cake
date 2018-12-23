require 'pry'

def can_two_movies_fill_flight?(movie_lengths, flight_length)

# movie lengths we've seen so far
movie_lengths_seen = {}


  movie_lengths.each do |first_movie_length|

    matching_second_movie_length = flight_length - first_movie_length

    if movie_lengths_seen.include?(matching_second_movie_length)
     true
    else
      movie_lengths_seen[first_movie_length] = first_movie_length
     false
    end
  end
end


i = 150
a = [30, 100, 45, 20, 130, 90]

can_two_movies_fill_flight?(a, i)
