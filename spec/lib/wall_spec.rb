require_relative '../spec_helper'

describe Wall do

  before :each do
    @test_wall = [[1,3],[2,3],[3,3],[4,3]]
    @test_wall_fail = [[0,3],[2,3],[3,3],[4,3]]

    @wall = Wall.new(@test_wall)
    @wall_fail = Wall.new(@test_wall_fail)
  end

  describe ".parse_json_wall_to_wall_of_points" do
    it "the wall_points array should be full " do
      expect(@wall.wall_points).not_to be_empty
    end
  end

  describe ".has_valid_points?" do
    it "the wall is valid" do
      expect(@wall.has_valid_points?).to eq true
    end
  end

  describe ".has_valid_points?" do
    it "the wall is invalid" do
      expect(@wall_fail.has_valid_points?).to eq false
    end
  end


end
