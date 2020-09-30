puts "Cleaning database"

Character.destroy_all
Universe.destroy_all
Tag.destroy_all

tags = ['Gryffindor', 'Hufflepuff', 'Ravenclaw', 'Slytherin']

tags.each do |tag_name|
  Tag.create!(name: tag_name)
end


puts "Creating universes"

Universe.create!(
    name: 'Wizarding World',
    banner_url: 'https://wallpapercave.com/wp/bGdF3Go.jpg'
)

puts "Created #{Universe.count} universe(s)"

puts "Creating characters"

Character.create!(
    name: 'Harry Potter',
    photo_url: 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/09/29/15/hp.jpg?w968h681',
    universe: Universe.find_by(name: 'Wizarding World')
)

Character.create!(
    name: 'Draco Malfoy',
    photo_url: 'https://thirdhour.org/wp-content/uploads/2016/08/institutehp2.jpg',
    universe: Universe.find_by(name: 'Wizarding World')
)

Character.create!(
    name: 'Albus Dumbledore',
    photo_url: 'https://img.cinemablend.com/filter:scale/quill/9/2/9/b/b/6/929bb62f9f38f5059770a54c5988048a848356c9.jpg?fw=1200',
    universe: Universe.find_by(name: 'Wizarding World')
)

puts "Created #{Character.count} character(s)"
