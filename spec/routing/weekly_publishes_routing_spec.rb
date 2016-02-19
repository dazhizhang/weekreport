require "rails_helper"

RSpec.describe WeeklyPublishesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/weekly_publishes").to route_to("weekly_publishes#index")
    end

    it "routes to #new" do
      expect(:get => "/weekly_publishes/new").to route_to("weekly_publishes#new")
    end

    it "routes to #show" do
      expect(:get => "/weekly_publishes/1").to route_to("weekly_publishes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/weekly_publishes/1/edit").to route_to("weekly_publishes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/weekly_publishes").to route_to("weekly_publishes#create")
    end

    it "routes to #update" do
      expect(:put => "/weekly_publishes/1").to route_to("weekly_publishes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weekly_publishes/1").to route_to("weekly_publishes#destroy", :id => "1")
    end

  end
end
