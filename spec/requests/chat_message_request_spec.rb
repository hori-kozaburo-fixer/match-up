require 'rails_helper'

RSpec.describe "ChatMessages", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/chat_message/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/chat_message/create"
      expect(response).to have_http_status(:success)
    end
  end

end
