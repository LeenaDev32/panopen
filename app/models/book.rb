# frozen_string_literal: true

# app/models/book.rb
class Book < ApplicationRecord
  belongs_to :course

  validates :name, :content, presence: true
end
