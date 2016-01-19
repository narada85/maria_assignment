require "rails_helper"

RSpec.describe TemperaturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/temperatures").to route_to("temperatures#index")
    end

    it "routes to #new" do
      expect(:get => "/temperatures/new").to route_to("temperatures#new")
    end

    it "routes to #show" do
      expect(:get => "/temperatures/1").to route_to("temperatures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/temperatures/1/edit").to route_to("temperatures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/temperatures").to route_to("temperatures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/temperatures/1").to route_to("temperatures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/temperatures/1").to route_to("temperatures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/temperatures/1").to route_to("temperatures#destroy", :id => "1")
    end

  end
end
