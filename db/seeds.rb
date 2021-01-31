# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

if User.count == 0
  User.create(username: "pikachu", email: "pikachu@test.com", password: "password1", password_confirmation: "password1")
  User.create(username: "charmander", email: "char@test.com", password: "password2", password_confirmation: "password2")
  User.create(username: "squirtle", email: "squirtle@test.com", password: "password3", password_confirmation: "password3")
  puts "Created Users."
end

if Watchlist.all.length == 0
  Watchlist.create(user_id: 1, movie_id: 133, title: "Land before time")
  puts "Created Movie in Watchlist: Land before time, 1."

  Watchlist.create(user_id: 2, movie_id: 1444, title: "Little mermaid")
  puts "Created Movie in Watchlist: Little mermaid, 2."

  6.times {
    user_id = rand(1..3)
    movie_id = rand(60..360)
    title = Faker::Movie.title

    Watchlist.create(user_id: user_id, movie_id: movie_id, title: title)

    puts "Created Movie in Watchlist: #{title}, #{user_id}."
  }
end

if Friendship.count == 0
  Friendship.create(user_id: 1, friend_id: 2)
  Friendship.create(user_id: 1, friend_id: 3)
  Friendship.create(user_id: 2, friend_id: 1)
  puts "Created Friendships."
end


