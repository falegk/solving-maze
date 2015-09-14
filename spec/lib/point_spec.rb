require_relative '../spec_helper'

describe Point do

  before :each do
    @point = Point.new(2,4)
    @point_fail = Point.new(0,4)
    @point_out_of_world = Point.new(8,5)
    @dimensions_x, @dimensions_y = 7, 7
  end

  describe ".is_valid_point" do
    it "The point is valid" do
      expect(@point.is_valid_point?).to eq true
    end
    it "The point is invalid" do
      expect(@point_fail.is_valid_point?).to eq false
    end
  end

  describe "is_point_in_world?" do
    it "Point is in the world" do
      expect(@point.is_point_in_world?(@dimensions_x,@dimensions_y)).to eq true
    end
    it "Point is out of the world" do
      expect(@point_out_of_world.is_point_in_world?(@dimensions_x,@dimensions_y)).to eq false
    end
  end

end

