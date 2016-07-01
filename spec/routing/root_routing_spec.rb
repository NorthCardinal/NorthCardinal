require "rails_helper"

RSpec.describe ApplicationController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(:get => "/").to route_to("dashboard#show")
    end
  end
end
