# frozen_string_literal: true

namespace :batch do
  desc 'Create Database'
  task populate_database: :environment do
    ReadingTime.destroy_all
    User.destroy_all
    Book.destroy_all
    Course.destroy_all

    course = Course.create!(name: Faker::University.name)

    book = Book.create!(
      name: Faker::Book.title, course:,
      content: Faker::Lorem.paragraph(sentence_count: 20)
    )

    15.times do
      User.create!(name: Faker::Name.name, email: Faker::Internet.email)
    end

    User.all.each do |user|
      ReadingTime.create(user_id: user.id, book_id: book.id, total_time: rand(2..30))
    end
  end
end
