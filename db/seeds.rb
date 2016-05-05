# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

photo_info = [
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Lake_Bondhus_Norway_2862.jpg/1280px-Lake_Bondhus_Norway_2862.jpg",
    :caption => "Lake Bondhus"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Lanzarote_5_Luc_Viatour.jpg/1280px-Lanzarote_5_Luc_Viatour.jpg",
    :caption => "Cueva de los Verdes"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Fire_breathing_2_Luc_Viatour.jpg/1280px-Fire_breathing_2_Luc_Viatour.jpg",
    :caption => "Jaipur"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Ніжний_ранковий_світло.jpg/1280px-Ніжний_ранковий_світло.jpg",
    :caption => "Sviati Hory"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Mostar_Old_Town_Panorama_2007.jpg/1280px-Mostar_Old_Town_Panorama_2007.jpg",
    :caption => "Mostar"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Elakala_Waterfalls_Swirling_Pool_Mossy_Rocks.jpg/1280px-Elakala_Waterfalls_Swirling_Pool_Mossy_Rocks.jpg",
    :caption => "Elakala"
  },
  {
    :source => "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Biandintz_eta_zaldiak_-_modified2.jpg/1280px-Biandintz_eta_zaldiak_-_modified2.jpg",
    :caption => "Biandintz"
  },
  {
    :source => "http://sites.psu.edu/english15tatianarotger/wp-content/uploads/sites/32153/2015/09/Alley-in-the-old-city-of-San-J-2.jpg",
    :caption => "Old San Juan"
  },
  {
    :source => "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwih94nTgrrMAhWLGB4KHXufDh0QjBwIBA&url=http%3A%2F%2Fimages.kaneva.com%2Ffilestore%2F1589891%2F2275551%2FRome%2520Coliseum%25202.JPG&psig=AFQjCNE8fYa0mjuTOfb9bxErBIYZuBquew&ust=1462231416875016",
    :caption => "Coliseum"
  }
]

photo_info.each do |photo_hash|
  p = Photo.new
  p.source = photo_hash[:source]
  p.caption = photo_hash[:caption]
  p.save
end

puts "There are now #{Photo.count} photos in the database."
