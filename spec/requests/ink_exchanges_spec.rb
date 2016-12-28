require 'rails_helper'

RSpec.describe "InkExchanges", :type => :request do
  describe "GET /ink_exchanges" do
    it "works! (now write some real specs)" do
      get ink_exchanges_path
      expect(response.status).to be(200)
    end
  end
end
