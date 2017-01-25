# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(first_name:"Martha", last_name: "Stewart", email: "ms@email.com", password:"123", password_confirmation: "123", image: "http://www.adweek.com/files/imagecache/node-detail/news_article/tt-martha-stewart-hed-2012.jpg")

project = Project.create(name: "Bicycle Wheel Dream Catcher",  user_id: user.id)

instructions = Instruction.create(project_id: 2, description: "Insert Lights", step_number: 1)

instructions = Instruction.create(project_id: 2, description: "Plug in ", step_number: 3)

instructions = Instruction.create(project_id: 2, description: "Turn on", step_number: 2)

project_images = ProjectImage.create(project_id: 2, url: "https://s-media-cache-ak0.pinimg.com/564x/7a/51/1a/7a511abda7ed9f853a1d38669a67cf2c.jpg")




