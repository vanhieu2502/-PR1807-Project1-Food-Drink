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
20.times do |n|
  order = Order.new(name: "Product",
                email: "emailccc#{n+1}@gmail.com",
                address: "my dinh, ha noi",
                phone: "0967895678",
                code: "123456",
                subtotal:"abc123",
                status: "buying",
                user: User.first)
  order.products.build(quantity: 1, product: Product.first)
  order.save!
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
