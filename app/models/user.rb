class User < ApplicationRecord
  belongs_to :course, optional: true
  enum role: [:student, :instructor]
end
