# frozen_string_literal: true

# app/models/course.rb
class Course < ApplicationRecord
  validates :name, presence: true

  has_many :users
  has_many :books
end
