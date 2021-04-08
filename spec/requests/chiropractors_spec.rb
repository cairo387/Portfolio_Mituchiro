require 'rails_helper'

RSpec.describe "Chiropractors", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/chiropractors/index"
      expect(response).to have_http_status(:success)
    end
  end

end
