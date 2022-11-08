namespace :batch do
  desc "Create Database"
  task populate_database: :environment do
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
  end
end