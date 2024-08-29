# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurants = [
  { name: "The Great Burger", address: "123 Main St", category: 'american', phone_number: "02903713932" },
  { name: 'Sushi World', address: '456 Elm St', category: 'japanese', phone_number: "07823837039" },
  { name: 'Pasta Palace', address: '789 Oak St', category: 'italian', phone_number:  "09784293487"},
  { name: 'Kung_fu Panda', address: '1 Oak St', category: 'chinese', phone_number:  "09784293487"},
  { name: 'Pasta Avenue', address: '111 github St', category: 'italian', phone_number:  "09734294525"}
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Seeded #{Restaurant.count} restaurants."
