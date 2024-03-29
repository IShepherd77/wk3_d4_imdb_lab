require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')

require('pry-byebug')

Star.delete_all()
Movie.delete_all()
Casting.delete_all()

star1 = Star.new({ 'first_name' => 'Tom', 'last_name' => 'Cruise'})
star2 = Star.new({ 'first_name' => 'Daniel', 'last_name' => 'Craig'})
star1.save()
star2.save()

movie1 = Movie.new({ 'title' => 'Mission Impossible', 'genre' => 'action'})
movie2 = Movie.new({ 'title' => 'Casino Royale', 'genre' => 'comedy'})
movie1.save()
movie2.save()

casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 50 })
casting2 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 100 })
casting1.save()
casting2.save()

binding.pry
nil
