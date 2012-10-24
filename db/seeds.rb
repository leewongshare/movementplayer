# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(:name => "wong lee1", :email => "lee1@lee.com",:password => "aaa")
u2 = User.create(:name => "wong lee2", :email => "lee2@lee.com",:password => "aaa")
u3 = User.create(:name => "wong lee3", :email => "lee3@lee.com",:password => "aaa")

u1.save
u2.save
u3.save

