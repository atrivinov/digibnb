# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "eliminando instancias"
Booking.destroy_all
Service.destroy_all
User.destroy_all


puts "creando usuarios"
user1 = User.create(email: "alexa@gmail.com", password: "123456")
user2 = User.create(email: "andres@gmail.com", password: "123456")
user3 = User.create(email: "bndres@gmail.com", password: "123456")
user4 = User.create(email: "candres@gmail.com", password: "123456")
user5 = User.create(email: "ctandres@gmail.com", password: "123456")

puts "fin creación de usuarios"

puts "crerando servicios"
service1 = Service.create!(description: "Clases de Rails", available: true, price: 234, product_name: "Profesora de Rails", user_id: user1.id)
service2 = Service.create!(description: "Clases de Merengue", available: true, price: 100, product_name: "Profesor de Merengue", user_id: user2.id)
service3 = Service.create!(description: "Clases de Merengue", available: true, price: 100, product_name: "Profesor de Merengue", user_id: user3.id)
service4 = Service.create!(description: "Clases de Merengue", available: true, price: 100, product_name: "Profesor de Merengue", user_id: user4.id)
service5 = Service.create!(description: "Clases de Merengue", available: true, price: 100, product_name: "Profesor de Merengue", user_id: user5.id)


puts "servicios creados"

puts "creando bookings"
booking1 = Booking.create!(start_date: "2022/10/01", end_date: "2022/10/10", user: user1, service: service1)
booking2 = Booking.create!(start_date: "2022/10/01", end_date: "2022/10/10", user: user2, service: service2)
booking3 = Booking.create!(start_date: "2022/10/01", end_date: "2022/10/10", user: user1, service: service1)
booking4 = Booking.create!(start_date: "2022/10/01", end_date: "2022/10/10", user: user1, service: service1)

puts "booking creado"
