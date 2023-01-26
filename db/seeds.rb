# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

i = 0
10.times do
  i += 1
  puts "Creating flat number #{i}"
  Flat.create(
    name: "Light & Spacious Garden Flat London",
    address: Faker::Address.street_name,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(50..300),
    number_of_guests: rand(1..9)
  )
end
