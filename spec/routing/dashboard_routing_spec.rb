require "rails_helper"

RSpec.describe DashboardController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(:get => "/dashboard").to route_to("dashboard#show")
    end
  end
end
