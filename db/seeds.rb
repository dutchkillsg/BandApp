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


Band.create({name: 'Playboi Carti', genre: 'hip/hop', image: 'http://www.xxlmag.com/files/2017/03/C7Dgac5WcAApax6.jpg', explicit_lyrics: true})
Band.create({name: 'Linkin Park', genre: 'alternative', image: 'http://www.billboard.com/files/styles/article_main_image/public/media/linkin-park-billboard-650.jpg', explicit_lyrics: true})
Band.create({name: 'Midnight to Monaco', genre: 'electronic', image: 'http://read-static.tidal.com/wp-content/uploads/2016/08/24143840/MIDNIGHT-FINAL-.jpg', explicit_lyrics: true})


Event.create({name: 'Global Citizens',date: '08/15/2017', alcohol_served: true, image: 'https://brightfuture.unilever.us/Images/img_0099---cred.-matthew-makar--535px-_tcm1370-471636_1.jpg', venue_id: 1, band_id: 1})
Event.create({name: 'Meadows',date: '08/26/2017', alcohol_served: true, image: 'https://i.ytimg.com/vi/LH6jRVBykfg/maxresdefault.jpg', venue_id: 2, band_id: 2})
Event.create({name: 'Electronic Music Festival',date: '09/06/2017', alcohol_served: true, image: 'http://hildalsolis.org/wp-content/uploads/2015/08/Rave.jpg', venue_id: 3, band_id: 3})
