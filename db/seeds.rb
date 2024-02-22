# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Car.destroy_all

User.create( email: 'ayoub@example.com', password: 'ayoub1111')
User.create( email: 'fadell@example.com', password: 'ayoub1111')
User.create( email: 'hamid@example.com', password: 'ayoub111')
User.create( email: 'hamid1@example.com', password: 'ayoub181')


Car.create(brand: 'Dacia', model: 'Log', year_of_production: 1999, address: 'Casablanca',price_per_day: 10.00, user: User.find(1))
Car.create(brand: 'Peugeot', model: 'Logan', year_of_production: 1999, address: 'Casablanca',price_per_day:10,user: User.find(2))
Car.create(brand: 'axa', model: 'pogan', year_of_production: 1999, address: 'Casablanca',price_per_day:10 ,user: User.find(3) )
Car.create(brand: 'Ferrari', model: 'ferrari', year_of_production: 1999, address: 'Casablanca',price_per_day:10,user: User.find(4))

Booking.create(starts_at: '2024-02-21', ends_at: '2024-02-22', accepted: true, user: User.find(1), car: Car.find(1))
Booking.create(starts_at: '2024-02-21', ends_at: '2024-02-22', accepted: true, user: User.find(2), car: Car.find(2))
Booking.create(starts_at: '2024-02-21', ends_at: '2024-02-22', accepted: true, user: User.find(3), car: Car.find(3))
Booking.create(starts_at: '2024-02-21', ends_at: '2024-02-22', accepted: true, user: User.find(4), car: Car.find(4))
