require 'rails_helper'

RSpec.describe NorthCardinal::Label do
  describe "#new" do
    it "creates a new label" do
      expect(NorthCardinal::Label.new(text: "foo", data: "bar")).to be_a(NorthCardinal::Label)
    end
  end

  describe "#to_png" do

  end
end
