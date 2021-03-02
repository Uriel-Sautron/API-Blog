# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Article.delete_all

User.create!(
  email: 'yeyel974@hotmail.com',
  encrypted_password: '123456'
)

30.times do 
  Article.create!(
    title: Faker::Game.title,
    content: Faker::ChuckNorris.fact,
    user_id: 1
    )
end
puts 'Generate 30 Articles'