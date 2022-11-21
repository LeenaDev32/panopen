# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'associations' do
    it { should belong_to(:course) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:content) }
  end
end
