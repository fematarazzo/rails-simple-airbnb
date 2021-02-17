# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

puts 'creating flats...'

4.times do
  flat = Flat.create(
    name: Faker::Lorem.sentence(word_count: 4),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.sentence(word_count: 4, supplemental: true, random_words_to_add: 5),
    price_per_night: rand(50..400),
    number_of_guests: rand(2..8)
  )
  puts "creating flat #{flat.id}"
end

puts 'done!'
