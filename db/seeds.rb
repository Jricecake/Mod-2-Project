# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jonny = User.create(name: "Jonny")
home = jonny.locations.create(name: "Home")
office = jonny.locations.create(name: "Office")

bedroom = home.rooms.create(name: "Bedroom")
living_room = home.rooms.create(name: "Living Room")

bedroom.plants.create(name: "Pothos", description: "Hanging in the window", water_status: "low")
bedroom.plants.create(name: "Monstera", description: "Small, but growing news leaves often", water_status: "watered")
bedroom.plants.create(name: "Barrel Cactus", description: "Brought from Texas...not liking this environment", water_status: "low")
bedroom.plants.create(name: "Peperomia", description: "Growing quick!", water_status: "watered")


