# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
Submission.destroy_all

# Farishta = User.create({name:"Farishta", email: "farishta.haider@gmail.com"})
FMessage = Submission.create({user: "Farishta", email: "farishta.haider@gmail.com", caption: "Hi",photo: "hey", video: "what", message: "Happy Birthday"})
