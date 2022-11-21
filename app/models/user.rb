# frozen_string_literal: true

# app/models/user.rb
class User < ApplicationRecord
  enum role: %i[student instructor], _default: 'student'

  has_many :books
  has_many :reading_time
end
