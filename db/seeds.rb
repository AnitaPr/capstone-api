# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name:"Charlie", email: "charlie@test.com", password: "password1")
User.create(name:"Anna", email:"anna@test.com", password:"password1")

LocationType.create(description:"Hotel")
LocationType.create(description:"Playground")
LocationType.create(description:"Museum")
LocationType.create(description:"Restaurant")
LocationType.create(description:"Pool")

Location.create(name:"The Purple Pig Resturant", description:"Restaurant", city:"Chicago", state:"Illinois", location_type_id: 4 )
Location.create(name:"The Metropolitan Museum of Art", description:"Museum", city:"New York", state:"New York", location_type_id: 3 )
Location.create(name:"American Museum of Natural History", description:"Museum", city:"New York", state:"New York", location_type_id: 3 )
Location.create(name:"The Grove Resort and Water Park", description:"Hotel", city:"Orlando", state:"Florida", location_type_id: 1 )




