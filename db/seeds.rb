# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.destroy_all
User.destroy_all
u = User.create(name: 'Jack', email: 'jack@test.com', password: '123456789', password_confirmation: '123456789')
# trip = u.trips.new(
#   cities_attributes: [{
#     name: 'Pune',
#     country: 'India',
#     places_attributes: [{
#       name: 'Agakhan palace',
#       description: 'A very nice place',
#       review: 'A good review',
#       pictures_attributes: [{
#         url: 'http://placehold.it/200*200',
#         description: 'just a pic'url: 'http://placehold.it/200*200'url: 'http://placehold.it/200*200'
#       }]
#     }, {
#       name: 'Mulshi dam',
#       description: 'A very serene place',
#       review: 'Dont go alone, not very safe',
#       pictures_attributes: [{
#         url: 'http://placehold.it/200*200',
#         description: 'just a pic'
#       }]
#     }]
#   }]
# )
(1..10).each do |count|
  trip = u.trips.create!(name: "Pune trip #{count}", description: "Was mostly in summer #{count}")
  city = trip.cities.create!(name: "Pune #{count}", country: 'India')
  place1 = city.places.create!(name: "Agakhan Palace #{count}", description: "A very nice place #{count}", review: 'A good review')
  place2 = city.places.create!(name: "Mulshi Dam #{count}", description: "A very nice place #{count}", review: 'A good review')
  place1.pictures.create!(url: 'https://unsplash.it/300/300/?random', description: 'just a pic')
  place2.pictures.create!(url: 'https://unsplash.it/300/300/?random', description: 'just a pic')
end

