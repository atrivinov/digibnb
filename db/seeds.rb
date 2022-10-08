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
user1 = User.create(first_name: "Alexandra", Last_name: "Triviño", email: "alexa@gmail.com", password: "123456")
user2 = User.create(first_name: "Andres", Last_name: "Ibañez", email: "andres@gmail.com", password: "123456")
user3 = User.create(first_name: "Mateo", Last_name: "Calle", email: "mateo@gmail.com", password: "123456")
user4 = User.create(first_name: "Daniela", Last_name: "Soto", email: "daniela@gmail.com", password: "123456")
user5 = User.create(first_name: "Linda", Last_name: "Mejia", email: "linda@gmail.com", password: "123456")

puts "Usuarios creados"
