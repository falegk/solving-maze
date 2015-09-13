require_relative '../spec_helper'

describe World do
  before :each do
    @start_p = Point.new(2,2)
    @start_p_fail = Point.new(2,0)
    @end_p = Point.new(4,4)
    @end_p_fail = Point.new(4,0)
    @wall = Wall.new([[1,3],[2,3],[3,3],[4,3]])
    @wall_fail = Wall.new [[1,3],[2,3],[3,0],[4,3]]
    @world = World.new(@start_p,@end_p,6,8,@wall)
    @world_fail_wall_in_matrix = World.new(@start_p,@end_p,3,3,@wall)
    @world_fail_wall_in_matrix_2 = World.new(@start_p,@end_p,4,5,@wall_fail)
    @world_fail_dimensions = World.new(@start_p,@end_p,-1,5,@wall)
  end

  describe ".is_wall_belongs_in_world?" do
    it "Wall is valid" do
      expect(@world.is_wall_belongs_in_world?).to eq true
    end
    it "Wall is invalid (value > dinmensions)" do
      expect(@world_fail_wall_in_matrix.is_wall_belongs_in_world?).to eq false
    end
    it "Wall is invalid (value < 0)" do
      expect(@world_fail_wall_in_matrix.is_wall_belongs_in_world?).to eq false
    end
  end

  describe "has_the_world_valid_dimensions?" do
    it "World dimensions is valid" do
      expect(@world.has_the_world_valid_dimensions?).to eq true
    end
    it "World dimensions is invalid" do
      expect(@world_fail_dimensions.has_the_world_valid_dimensions?).to eq false
    end
  end
end