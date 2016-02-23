# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(first_name:"Jon", last_name:"Snow", email:"dead@dead.com" ,password:"11111")
User.create(first_name:"Harry", last_name:"Poter", email:"p@p.com" ,password:"11111")
User.create(first_name:"Vladamir", last_name:"Putin", email:"b@b.com" ,password:"11111")
User.create(first_name:"Klay", last_name:"Thompson", email:"g@g.com" ,password:"11111")
