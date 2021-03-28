# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: "Admin")
Role.create(name: "Visit")
Role.create(name: "Oenologist")

User.create(email: "Admin@example.com" , password: "123123" , password_confirmation: "123123", role_id: 1 )
User.create(email: "Visit@example.com" , password: "123123" , password_confirmation: "123123", role_id: 2 )
User.create(email: "Oeno@example.com" , password: "123123" , password_confirmation: "123123", role_id: 3 )

strains = [ "Reisling","Pino Gris","Sauvignon Blanc","Chardonnay","Pinot Noir","Zinfandel","Syrah","Cabernet Sauvignon"]
strains.each { |strain| Strain.create(name: strain) }