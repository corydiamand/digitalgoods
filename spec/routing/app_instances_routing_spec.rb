require "spec_helper"

describe AppInstancesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/app_instances").to route_to("app_instances#index")
    end

    it "routes to #new" do
      expect(:get => "/app_instances/new").to route_to("app_instances#new")
    end

    it "routes to #show" do
      expect(:get => "/app_instances/1").to route_to("app_instances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/app_instances/1/edit").to route_to("app_instances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/app_instances").to route_to("app_instances#create")
    end

    it "routes to #update" do
      expect(:put => "/app_instances/1").to route_to("app_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/app_instances/1").to route_to("app_instances#destroy", :id => "1")
    end

  end
end
