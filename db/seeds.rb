# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Venue.create ({name: 'MSG', city: "NYC", state: 'New York', family_friendly: true, image: 'https://www.newyorkpass.com/images/nyc-attractions/attraction-images-670x270/AttImg_MadisonSquareGardenAllAccessTour1_large.jpg'})

Venue.create ({name: 'City Field', city: "NYC", state: 'New York', family_friendly: true, image: 'http://www.baseballparks.com/images/NYCitiField/Citi9.jpg'})
Venue.create ({name: 'Jiffy Lube Live', city: "Reston", state: 'Virginia', family_friendly: false, image: 'http://www.bristowamphitheater.com/wp-content/uploads/2012/05/jiffy-lube-live.jpg'})

