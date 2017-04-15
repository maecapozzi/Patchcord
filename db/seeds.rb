# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  10.times do
    users = User.create([{email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: Faker::Internet.password, city: "New York", role: "musician" }])
  end

  10.times do
    users = User.create([{email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: Faker::Internet.password, city: "New York", role: "booker" }])
  end


  10.times do
    instruments = Instrument.create([{ name: Faker::Music.instrument }])
  end


  genres = Genre.create([{ name: "Rock" }, {name: "Pop"}, {name: "Soul"}, {name: "Jazz"}, {name: "Hip Hop"}])
