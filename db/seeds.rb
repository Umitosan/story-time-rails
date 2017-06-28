# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Spice.destroy_all
#
# 3.times do |index|
#   Spice.create!(name: Faker::Food.spice,
#                 description: Faker::Lorem.sentence(20, false, 0).chop,
#                 image_url: 'site.com/here_is_a_picture_of_cardamom.jpg'
#   )
# end
#
# p 'Created #{Spice.count} spices'


User.destroy_all
Story.destroy_all
Snippet.destroy_all


3.times do |index|
  User.create!(name: Faker::Book.author,
               id: index + 1
  )
end

3.times do |index|
  Story.create!(title: Faker::Book.title,
                user_id: index + 1,
                id: index + 1

  )
end

3.times do |index|
  Snippet.create!(body: Faker::Book.title,
                image: 'http://www.catster.com/wp-content/uploads/2015/06/monorail.jpg',
                user_id: index + 1,
                story_id: index + 1

  )
end

p 'Created #{Spice.count} spices'
p 'Created #{Spice.count} spices'
p 'Created #{Spice.count} spices'
