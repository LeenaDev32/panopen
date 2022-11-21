# frozen_string_literal: true

class ReadingTime < ApplicationRecord
  belongs_to :course
  belongs_to :user
end
