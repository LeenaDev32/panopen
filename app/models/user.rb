# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :course, optional: true
  enum role: %i[student instructor]
end
