require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:doctor_type) }
    it { should have_many(:visits) }
    it { should have_many(:patients) }
  end
end
