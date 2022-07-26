# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PatientProfiles', type: :request do
  let(:user)
  describe 'GET /index' do
    it 'returns http success' do
      get '/patient_profiles/index'
      expect(response).to have_http_status(:success)
    end
  end
end
