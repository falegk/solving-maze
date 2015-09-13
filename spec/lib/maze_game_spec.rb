require_relative '../spec_helper'

describe MazeGame do
  before :each do
    @wall = [[1,3],[2,3],[3,3],[4,3]]
    @wall_fail = Wall.new [[1,3],[2,3],[3,0],[4,3]]
    @mazegame = MazeGame.new
  end



end

