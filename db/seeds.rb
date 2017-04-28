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

a = Manufacturer.create(name: "Amy", latitude: 27.5, longitude: 153.0)
d = Manufacturer.create(name: "Danny", latitude: 33.8, longitude: 151.2)
e = Manufacturer.create(name: "Emily", latitude: 37.75, longitude: 144.8)


b = Wholesaler.create(name: "Billy", latitude: 33.8, longitude: 152.0)
f = Wholesaler.create(name: "Frank", latitude: 37.5, longitude: 144.9)
g = Wholesaler.create(name: "Gemma", latitude: 27.6, longitude: 153.0)
h = Wholesaler.create(name: "Harry", latitude: 37.6, longitude: 144.7)
i = Wholesaler.create(name: "Ian", latitude: 27.55, longitude: 153.4)


c = Batch.new
c.quantity = 20
c.color = 'Blue'
c.fabric = 'Cotton'
c.manufacturer = a
c.save

j = Batch.create(quantity: 50,
                 color: 'White',
                 fabric: 'Polycotton',
                 manufacturer: d)


d = Offer.new
d.wholesaler = b
d.batch = c
d.save

