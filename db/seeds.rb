# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.create!(email: 'me@admin.com', password: 'password') unless User.exists?(email: 'me@admin.com')

rand(10..30).times.map do
  author = Author.create!(
    author_name: Faker::Name.unique.name,
    phone: Faker::PhoneNumber.phone_number,
    address: Faker::Address.full_address,
    published_books: rand(10..50)
  )
  puts "Create Author: #{author.author_name}"
end

author_ids = Author.pluck(:id)

rand(50..100).times.map do
  book = Book.create!(
    title: Faker::Book.unique.title,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    author_id: author_ids.sample,
    price: rand(10..150),
    published_date: Faker::Date.backward(days: 900),
    sold: rand(29..300)
  )
  puts "Create Book: #{book.title}"
end
