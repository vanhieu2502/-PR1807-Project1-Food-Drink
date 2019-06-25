20.times do |n|
  Product.create!(name: "Food",
                 price: "120$",
                 description: "product new",
                 sale_price: "100$",
                 status: "buying",
                 kind: 0)
end
20.times do |n|
  Product.create!(name: "Drink",
                 price: "120$",
                 description: "product new",
                 sale_price: "100$",
                 status: "buying",
                 kind: 1)
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
