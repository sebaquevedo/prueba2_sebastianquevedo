# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Category.destroy_all

Category.create(name:'categoria 1')
Category.create(name:'categoria 2')
Category.create(name:'categoria 3')

Item.create(serialnumber:23,size:100,description:'soy un item de calidad',category_id:Category.last)
Item.create(serialnumber:234,size:150,description:'soy un item penca',category_id:Category.last)
Item.create(serialnumber:34,size:1450,description:'soy un item shuer loco',category_id:Category.last)