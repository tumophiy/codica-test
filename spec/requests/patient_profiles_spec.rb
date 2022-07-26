# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PatientProfiles', type: :request do
  let(:user) { create(:user, :patient) }

  before(:each) do
    sign_in(user)
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/patient_profiles/index'
      expect(response).to have_http_status(:success)
    end
  end
end
