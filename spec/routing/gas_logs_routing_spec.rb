require "rails_helper"

RSpec.describe GasLogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gas_logs").to route_to("gas_logs#index")
    end


    it "routes to #show" do
      expect(:get => "/gas_logs/1").to route_to("gas_logs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/gas_logs").to route_to("gas_logs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gas_logs/1").to route_to("gas_logs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gas_logs/1").to route_to("gas_logs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gas_logs/1").to route_to("gas_logs#destroy", :id => "1")
    end

  end
end
