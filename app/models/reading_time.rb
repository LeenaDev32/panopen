# frozen_string_literal: true

class ReadingTime < ApplicationRecord
  belongs_to :book
  belongs_to :user
end
