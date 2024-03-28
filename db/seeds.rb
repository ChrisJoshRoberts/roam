# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Creating users..."
10.times do |i|
  User.create!(
    name: Faker::Name.first_name,
    email: Faker::Internet.email,
    password: "password",
    avatar: "https://randomuser.me/api/portraits/men/#{i}.jpg"
  )
end

puts "Creating products..."
10.times do |i|
  Product.create(
    
  )
end
