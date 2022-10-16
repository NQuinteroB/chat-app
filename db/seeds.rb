require 'open-uri'

ChatRoom.destroy_all
User.destroy_all

puts "Create 2 users..."

url1 = File.open(Rails.root.join('db/images/test1.jpg'))

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
justus.photo.attach(io: url1, filename: "p1.png", content_type: "image/png")
justus.save!

chatroom1 = ChatRoom.new(
  name: "Cat",
  description: "blabla"
)
chatroom1.user = justus
chatroom1.save!

puts "Finished!"
