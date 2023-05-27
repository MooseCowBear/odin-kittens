# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cat_names = ["Sneakers", "Cow", "Chip", 
    "Apple Pie", "Nova", "Comet", "Cayenne", 
    "Pepper", "Button", "Onyx", "Midnight",
    "Marshmallow Kibble", "Yum Yum", "Aspen", 
    "Brulee", "Cannoli", "French Toast", "Isaac", 
    "Levi", "Maple", "Multi", "Shy"]

cat_names.each do |n|
  a = rand(0..20)
  c = rand(1..10)
  s = rand(1..10)
  Kitten.create!(name: n, age: a, cuteness: c, softness: s)
end