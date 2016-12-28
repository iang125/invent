require 'rails_helper'

RSpec.describe "Inks", :type => :request do
  describe "GET /inks" do
    it "works! (now write some real specs)" do
      get inks_path
      expect(response.status).to be(200)
    end
  end
end
