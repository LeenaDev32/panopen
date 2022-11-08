# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
14.times do |user|
  User.create!(
    name: "user#{user}",
    email: "user#{user}.example.com",
    role: 0,
    course_id: 1
  )
end

Course.create!(
  name: "DSA"
)

Book.create!(
  name: "Introduction to Algorithms", 
  content: "Some Text", 
  course_id: 1
)

User.create!(
  name: "admin",
  email: "admin.example.com",
  role: 1,
)