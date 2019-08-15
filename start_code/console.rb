require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

require('pry-byebug')

star1 = Star.new({ 'first_name' => 'Tom', 'last_name' => 'Cruise'})
star2 = Star.new({ 'first_name' => 'Daniel', 'last_name' => 'Craig'})
star1.save()
star2.save()

movie1 = Movie.new({ 'title' => 'Mission Impossible', 'genre' => 'action'})
movie2 = Movie.new({ 'title' => 'Casino Royale', 'genre' => 'comedy'})
movie1.save()
movie2.save()
