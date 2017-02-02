require "rails_helper"

RSpec.describe ArticalesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/articales").to route_to("articales#index")
    end

    it "routes to #new" do
      expect(:get => "/articales/new").to route_to("articales#new")
    end

    it "routes to #show" do
      expect(:get => "/articales/1").to route_to("articales#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/articales/1/edit").to route_to("articales#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/articales").to route_to("articales#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/articales/1").to route_to("articales#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/articales/1").to route_to("articales#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/articales/1").to route_to("articales#destroy", :id => "1")
    end

  end
end
