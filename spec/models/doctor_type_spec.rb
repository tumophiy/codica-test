# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DoctorType, type: :model do
  describe 'associations' do
    it { should have_many(:doctors) }
  end

  describe 'validations' do
    it { should validate_uniqueness_of(:category) }
  end
end
