# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cleaning the database
Garden.destroy_all
puts "Creating Gardens"

garden1 = Garden.create!(
  name: "Jardin de Toto",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Plant.create!(
  name: 'Cactus',
  image_url: 'https://images.pexels.com/photos/6912856/pexels-photo-6912856.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  garden_id: garden1.id

)

garden2 = Garden.create!(
  name: "Jardin de petite fripouille",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Plant.create!(
  name: 'Plante Carnivore',
  image_url: 'https://images.pexels.com/photos/9770441/pexels-photo-9770441.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  garden_id: garden2.id
)

puts "Created #{Garden.count} gardens"
puts "Created #{Plant.count} plants"
