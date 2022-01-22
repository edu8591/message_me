# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create!(username:"user1", password:"password")
Message.create!(body:"This is the body for the first message", user:user)

user = User.create!(username:"user2", password:"password")
Message.create!(body:"This is the body for the second message", user:user)

user = User.create!(username:"user3", password:"password")
Message.create!(body:"This is the body for the third message", user:user)

user = User.create!(username:"user4", password:"password")
Message.create!(body:"This is the body for the fourth message", user:user)