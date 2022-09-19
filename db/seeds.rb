3.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  password = "password"

  # Generate a bunch of users
  User.create!(first_name: first_name,
               last_name: last_name,
               email: email,
               password: password,
               password_confirmation: password)  
end

# Generate listings for a subset of users
users = User.all.order(:created_at)
n = 1
users.each do |user|
  category = Category.create!(name: Faker::App.name)
  location = Location.create!(name: Faker::Address.city, category: category)
  description = Faker::Lorem.paragraph(random_sentences_to_add: 4)
  user.listings.create!(name: "Listing #{n}",
                        description: description,
                        capacity: "#{n}",
                        location: location,
                        category: category)
  n += 1
end
