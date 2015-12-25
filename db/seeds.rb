# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create!( :name => "快報資訊")
Category.create!( :name => "求物資")
Category.create!( :name => "求救")

Comment.create!( :reply => "TestComment1")
Comment.create!( :reply => "TestComment2")
Comment.create!( :reply => "TestComment3")

user = User.create!( :email => "dylanmail0203@gmail.com", :password => "12345678", :role => "admin")