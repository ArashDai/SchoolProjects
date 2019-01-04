# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

plane.create!(:manufacturer => 'Boeing', :model => '747-100', :seats => 400 )
plane.create!(:manufacturer => 'Boeing', :model => '737-300', :seats => 128 )
plane.create!(:manufacturer => 'Airbus', :model => 'A330', :seats => 350 )
plane.create!(:manufacturer => 'Airbus', :model => 'A321', :seats => 135 )

planeflight.create!(:plane_id => 01, :airline => 'United', :number => 101, :fromcity => 'Los Angeles', :tocity => 'Tokyo')
planeflight.create!(:plane_id => 02, :airline => 'Southwest', :number => 3085, :fromcity => 'Seatle', :tocity => 'Boston')
planeflight.create!(:plane_id => 03, :airline => 'American', :number => 31, :fromcity => 'Hong Kong', :tocity => 'London')
planeflight.create!(:plane_id => 04, :airline => 'Alaska', :number => 760, :fromcity => 'Burbank', :tocity => 'Seattle')