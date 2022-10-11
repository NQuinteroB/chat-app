# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

puts "Create 2 users..."

natalia = User.new(
  username: "natalia",
  email: "natalia@test.com",
  password: "testtest"
)
natalia.save!

justus = User.new(
  username: "justus",
  email: "justus@test.com",
  password: "testtest"
)
justus.save!

puts "Finished!"
