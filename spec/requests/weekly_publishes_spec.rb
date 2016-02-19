require 'rails_helper'

RSpec.describe "WeeklyPublishes", type: :request do
  describe "GET /weekly_publishes" do
    it "works! (now write some real specs)" do
      get weekly_publishes_path
      expect(response).to have_http_status(200)
    end
  end
end
