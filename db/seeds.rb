# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(:name => "wong lee1", :email => "lee1@lee.com",:password => "aaa", :acctype => "m")
u2 = User.create(:name => "wong lee2", :email => "lee2@lee.com",:password => "aaa", :acctype => "m")
u3 = User.create(:name => "wong lee3", :email => "lee3@lee.com",:password => "aaa", :acctype => "m")
u4 = User.create(:name => "wong lee4", :email => "lee4@lee.com",:password => "bbb", :acctype => "a")

u1.save
u2.save
u3.save
u4.save

s1 = Song.create(:name => "Moliendo Cafe", :price => 1.0, :audiofile => "/Users/wonglee/Music/iTunes/iTunes Music/Willie Villegas/Dancer's Paradise/03 Moliendo Cafe.mp3")

s1.save



