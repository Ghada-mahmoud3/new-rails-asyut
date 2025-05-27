# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Post.destroy_all
Editorship.destroy_all

user1 = User.create!(name: "dodo", email: "dodo@gmail.com")
user2 = User.create!(name: "Bob", email: "bobo@gmail.com")
user3 = User.create!(name: "Charlie", email: "bascota@gmail.com")

post1 = Post.create!(title: "apple has eaten", content: "who is who", user: user1, creator: user1)
post2 = Post.create!(title: "who ate it", content: "somebody knew", user: user2, creator: user2)

Editorship.create!(post: post1, editor: user2)
Editorship.create!(post: post1, editor: user3)
Editorship.create!(post: post2, editor: user1)
