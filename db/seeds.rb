# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.find_or_create_by!(username: "admin", email: "admin@email.com") do |user|
    user.password = "adminpass25"
    user.password_confirmation = "adminpass25"
    user.role = "admin"  
  end
  
  User.find_or_create_by!(username: "john_doe", email: "john@example.com") do |user|
    user.password = "password123"
    user.password_confirmation = "password123"
    user.role = "user" 
  end
  