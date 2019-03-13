# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
Booking.destroy_all
User.destroy_all
Event.destroy_all

visitor = Visitor.create!(email: "davidge@gmail.com", password: "password",first_name: "David", last_name: "Geismar")
guide = Guide.create!(email: "davidgei@gmail.com", password: "password", first_name: "Giulia", last_name: "Maria")
Guide.create!(email: "davidg@gmail.com", password: "password", first_name: "angelo", last_name: "angela")
Guide.create!(email: "david@gmail.com", password: "password", first_name: "fiu", last_name: "tiu")
event = Event.create(name: "Jackson Pollock", description: "paintings", start_date: "12/12/2018", end_date: "12/09/2019")
Event.create(name: "Collection Courtauld", description: "la collection courtauld", start_date: "12/12/2018", end_date: "12/09/2019")
Event.create(name: "Bonnard", description: "Bonnard impressionniste", start_date: "12/12/2018", end_date: "12/09/2019")
Event.create(name: "Byron", description: "la collection courtauld", start_date: "12/12/2018", end_date: "12/09/2019")

booking = Booking.create(start_time: Time.now, end_time: Time.now + 3, duration: 3, meeting_point: "whitchapel gallery", event: event, guide: guide, bookable: visitor)
