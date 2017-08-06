# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
m1 = Marca.create(name: "Nike")
Producto.create(name: "Tennis", description: "Tennis de la última generación",
	price: 80, marca_id: m1.id)
Producto.create(name: "Balón de futbol", description: "Balón #5 para soccer profesional",
	price: 40, marca_id: m1.id)

m2 = Marca.create(name: "Adidas")
Producto.create(name: "Tennis", description: "Tennis casuales blancos",
	price: 59, marca_id: m2.id)
Producto.create(name: "Playera", description: "Playera de equipo de fútbol",
	price: 79, marca_id: m2.id)

m3 = Marca.create(name: "Reebok")	
Producto.create(name: "Tennis", description: "Tennis para basketball",
	price: 89, marca_id: m3.id)
Producto.create(name: "Balija", description: "Balija deportiva color negro",
	price: 49, marca_id: m3.id)
