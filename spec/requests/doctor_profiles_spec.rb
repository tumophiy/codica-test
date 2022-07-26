require 'rails_helper'

RSpec.describe "DoctorProfiles", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/doctor_profiles/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/doctor_profiles/show"
      expect(response).to have_http_status(:success)
    end
  end

end
