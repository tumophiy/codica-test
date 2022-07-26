# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Visit, type: :model do
  describe 'associations' do
    it { should belong_to(:doctor) }
    it { should belong_to(:patient) }
  end
end
