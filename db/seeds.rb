# frozen_string_literal: true

# load File.join(Rails.root, 'lib', 'tasks', 'batch.rake')
# Rake::Task['batch:populate_database'].invoke

course = Course.create!(name: Faker::University.name)

Book.create!(
  name: Faker::Book.title, course:,
  content: Faker::Lorem.paragraph(sentence_count: 20)
)

15.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email)
end
