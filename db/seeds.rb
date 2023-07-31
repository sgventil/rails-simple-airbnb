# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database"
Flat.destroy_all

puts "Creating Flats"

4.times do
  flat = Flat.create!(
    name: Faker::Hipster.sentence(word_count: 12),
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph_by_chars(number: 160, supplemental: false),
    price_per_night: rand(20..200),
    number_of_guests: rand(2..10)
  )
  puts "Flat with id #{flat.id} has been created"
end

puts "Finished!"
