# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seeds.rb

# Create sample admins

admin1 = Admin.create!(
  email: 'admin152@example.com',
  password: 'adminpassword1',
  name: 'Admin User 71'
)

admin2 = Admin.create!(
  email: 'admin22@example.com',
  password: 'adminpassword2',
  name: 'Admin User 62'
)

puts 'Sample admins created.'

# Create sample clients
client1 = Client.create!(
  email: 'client14@example.com',
  password: 'clientpassword1',
  name: 'Client User 31'
)

client2 = Client.create!(
  email: 'client23@example.com',
  password: 'clientpassword2',
  name: 'Client User 23'
)

puts 'Sample clients created.'
