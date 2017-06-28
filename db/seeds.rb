# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Story.destroy_all
Snippet.destroy_all


3.times do |index1|
  myUser = User.create!(name: Faker::Book.author )
  3.times do |index2|
    myStory = myUser.stories.create!(title: Faker::Book.title )
    10.times do |index3|
      myStory.snippets.create!(body: Faker::RickAndMorty.quote,
                               user_id: myStory.user_id,
                               image: 'http://www.catster.com/wp-content/uploads/2015/06/monorail.jpg')
    end
  end
end

p "Created #{User.count} users"
p "Created #{Story.count} stories"
p "Created #{Snippet.count} snippets"
