# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


instructions = Instruction.create(project_id: 1, description: "Insert Lights", step_number: 2)

instructions = Instruction.create(project_id: 1, description: "Plug in wall" , step_number: 3)

instructions = Instruction.create(project_id: 1, description: "Close The Jar", step_number: 4)

instructions = Instruction.create(project_id: 4, description: "Gaze at the Bell Jar", step_number: 5)