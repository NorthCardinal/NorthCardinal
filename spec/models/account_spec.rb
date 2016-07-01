require 'rails_helper'

RSpec.describe Account, type: :model do
  describe ".names" do
    skip
  end

  describe ".scan" do
    skip
  end

  describe "#label" do
    skip
  end

  it { should validate_presence_of :name }
  it { should_not allow_value(nil).for(:name) }
  it { should_not allow_value('').for(:name) }

  it { should validate_presence_of :description }
  it { should_not allow_value(nil).for(:description) }
  it { should_not allow_value('').for(:description) }
end
