require 'rails_helper'

RSpec.describe "PatientProfiles", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/patient_profiles/index"
      expect(response).to have_http_status(:success)
    end
  end

end
