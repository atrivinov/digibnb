# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creando usuarios"
user1 = User.create(email: "alexa@gmail.com", password: "123456")
user2 = User.create(email: "andres@gmail.com", password: "123456")

puts "fin creación de usuarios"

puts "crerando servicios"
service1 = Service.create!(description: "Clases de Rails", available: true, price: 234, product_name: "Profesora de Rails", user_id: user1.id)
service2 = Service.create!(description: "Clases de Merengue", available: true, price: 100, product_name: "Profesor de Merengue", user_id: user2.id)

puts "servicios creados"

puts "creando bookings"
booking1 = Booking.create!(start_date: "2022/10/01", end_date: "2022/10/10", user: user1, service: service1)

puts "booking creado"
