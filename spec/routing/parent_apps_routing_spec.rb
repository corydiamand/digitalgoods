require "spec_helper"

describe ParentAppsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/parent_apps").to route_to("parent_apps#index")
    end

    it "routes to #new" do
      expect(:get => "/parent_apps/new").to route_to("parent_apps#new")
    end

    it "routes to #show" do
      expect(:get => "/parent_apps/1").to route_to("parent_apps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/parent_apps/1/edit").to route_to("parent_apps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/parent_apps").to route_to("parent_apps#create")
    end

    it "routes to #update" do
      expect(:put => "/parent_apps/1").to route_to("parent_apps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parent_apps/1").to route_to("parent_apps#destroy", :id => "1")
    end

  end
end
