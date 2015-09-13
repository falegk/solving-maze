require_relative '../spec_helper'

describe Point do

  before :each do
    @point = Point.new(2,4)
    @point_fail = Point.new(0,4)
  end

  describe ".is_valid_point" do
    it "The point is valid" do
      expect(@point.is_valid_point?).to eq true
    end
  end

  describe ".is_valid_point" do
    it "The point is invalid" do
      expect(@point_fail.is_valid_point?).to eq false
    end
  end
end