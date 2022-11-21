# frozen_string_literal: true

namespace :batch do
  desc 'Create Database'
  task populate_database: :environment do
    course = Course.create!(name: Faker::University.name)

    Book.create!(
      name: Faker::Book.title, course:,
      content: Faker::Lorem.paragraph(sentence_count: 20)
    )

    15.times do
      User.create!(name: Faker::Name.name, email: Faker::Internet.email)
    end
  end
end
