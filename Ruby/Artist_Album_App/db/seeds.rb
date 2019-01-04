# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cornell = Artist.create!( :last_name => 'Cornell', :first_name => 'Chris', :gender => 'male')
groll = Artist.create!( :last_name => 'Groll', :first_name => 'Dave', :gender => 'male')
mathers = Artist.create!( :last_name => 'Mathers', :first_name => 'Marshall', :gender => 'male')
manilow = Artist.create!( :last_name => 'Manilow', :first_name => 'Barry', :gender => 'male')

Album.create!( :title => "Audioslave", :starrating => 5, :yearrelased => 2014, :artist_id => cornell )
Album.create!( :title => "Foo Fighters", :starrating => 5, :yearrelased => 2014, :artist_id => groll )
Album.create!( :title => "The Marshall Mathers LP2", :starrating => 5, :yearrelased => 2014, :artist_id => mathers )
Album.create!( :title => "The Barry Manilow LP3", :starrating => 5, :yearrelased => 2014, :artist_id => manilow )