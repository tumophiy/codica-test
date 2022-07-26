require 'rails_helper'

RSpec.describe "Visits", type: :request do
  describe "GET /add" do
    it "returns http success" do
      get "/visits/add"
      expect(response).to have_http_status(:success)
    end
  end

end
