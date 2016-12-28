require "rails_helper"

RSpec.describe InkExchangesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ink_exchanges").to route_to("ink_exchanges#index")
    end

    it "routes to #new" do
      expect(:get => "/ink_exchanges/new").to route_to("ink_exchanges#new")
    end

    it "routes to #show" do
      expect(:get => "/ink_exchanges/1").to route_to("ink_exchanges#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ink_exchanges/1/edit").to route_to("ink_exchanges#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ink_exchanges").to route_to("ink_exchanges#create")
    end

    it "routes to #update" do
      expect(:put => "/ink_exchanges/1").to route_to("ink_exchanges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ink_exchanges/1").to route_to("ink_exchanges#destroy", :id => "1")
    end

  end
end
