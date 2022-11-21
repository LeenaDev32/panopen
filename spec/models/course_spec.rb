# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'associations' do
    it { should have_many(:books) }
    it { should have_many(:books) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
