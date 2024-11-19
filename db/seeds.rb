# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.create!(email: 'me@admin.com', password: 'password')

authors = 30.times.map do
  Author.create!(
    author_name: Faker::Name.name,
    phone: Faker::PhoneNumber.phone_number,
    address: Faker::Address.full_address,
    published_books: rand(10..50)
  )
end