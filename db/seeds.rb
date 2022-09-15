10.times do |n|
  category = Category.new(name: Faker::App.name)
  location = Location.create(name: Faker::Address.city, category: category)

  description = Faker::Lorem.paragraph(random_sentences_to_add: 4)

  Listing.create(name: "Listing #{n}",
                 description: description,
                 capacity: "#{n}",
                 location: location,
                 category: category)
end
