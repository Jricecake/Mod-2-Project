# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Jonny")
Location.create(name: "Home")
Location.create(name: "Office")
r1 = Room.create(name: "Bedroom")
r2 = Room.create(name: "Living Room")
r3 = Room.create(name: "Kitchen")
r4 = Room.create(name: "Bathroom")
p1 = Plant.create(name: "Pothos")
p2 = Plant.create(name: "Rodhodendren")
p3 = Plant.create(name: "Cactus")
p4 = Plant.create(name: "Peperomia")
p5 = Plant.create(name: "Ficus")
p6 = Plant.create(name: "Monstera")
