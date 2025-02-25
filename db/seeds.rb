# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




bali = Place.create(name: "bali")
sydney = Place.create(name: "sydney")

bali.entries.create(title: "Visiting the monkey island", description: "Lots of chimps", posted_on: "2024-03-01")
sydney.entries.create(title: "From Sydney, with love", description: "Good beer", posted_on: "2022-01-24")

