# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manufacturer.delete_all
Wholesaler.delete_all
Batch.delete_all
Offer.delete_all

a = Manufacturer.create(name: "Amy")
b = Wholesaler.create(name: "Billy")

c = Batch.new
c.quantity = 20
c.color = 'Blue'
c.fabric = 'Cotton'
c.manufacturer = a
c.save

d = Offer.new
d.wholesaler = b
d.batch = c
d.save