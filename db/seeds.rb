# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
Category.destroy_all
User.destroy_all

Category.create(name:'Cat 1')
Category.create(name:'Cat 2')
Category.create(name:'Cat 3')

User.create(name:'user1', email:'asdf@algo.cl')
User.create(name:'user2', email:'asdsf@algo.cl')
User.create(name:'user3', email:'asdssf@algo.cl')

Item.create(serialnumber:123, size:10, description:'description one', category_id: Category.find_by(name:'Cat 1').id, user_id: User.find_by(email:'asdf@algo.cl').id)
Item.create(serialnumber:456, size:20, description:'description two', category_id: Category.find_by(name:'Cat 2').id, user_id: User.find_by(email:'asdsf@algo.cl').id)
Item.create(serialnumber:789, size:30, description:'description three', category_id: Category.find_by(name:'Cat 3').id, user_id: User.find_by(email:'asdssf@algo.cl').id)
