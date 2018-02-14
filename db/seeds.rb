# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
User.destroy_all
User.create(name: "John", role: "Engineer", skills: "HTML, CSS, Javascript, React, Express", portfolio: "https://www.google.com", linkedin: "https://www.linkedin.com", email: "john@email.com", photo: "https://www.sparklabs.com/forum/styles/comboot/theme/images/default_avatar.jpg")




# # Users
# users_data = []
# 4.times do
#   first = FFaker::Name.first_name
#   last = FFaker::Name.last_name
#   users_data << {
#     name: first
#     last_name: last,
#     current_city: "San Francisco",
#     email: "#{first[0]}_#{last}@example.com".downcase,
#     password: "apple"
#   }
# end
# users = User.create(users_data)

# def random_city
#   ["San Francisco", "London", "Gibraltar"].sample
# end

# # Cities
# cities_data = []
#   cities_data << {
#     id: 2,
#     name: "San Francisco",
#     city_image: "san_francisco.jpg"
#   }
#   cities_data << {
#     id: 1,
#     name: "London",
#     city_image: "london.jpg"
#   }
#   cities_data << {
#     id: 3,
#     name: "Gibraltar",
#     city_image: "gibraltar2.jpg"
#   }
# cities = City.create(cities_data)

# # "Below for randomizing city names"
# # cities_data = []
# # 3.times do
# #   cities_data << {
# #     name: random_city,
# #     city_image: "image tag"
# #   }
# # end
# # cities = City.create(cities_data)

# # Posts
# posts_data = []
# 6.times do
#   posts_data << {
#     user: users.sample,
#     city: cities.sample,
#     title: "My family had a great time!",
#     content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
#             tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
#             quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
#             consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
#             cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
#             proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
#   }
# end
# posts = Post.create(posts_data)
