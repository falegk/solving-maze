require 'json'
Dir['lib/*.rb'].each {|f| require_relative f }

FILE = File.read(ARGV[0])


if FILE

  DATA = JSON.parse(FILE)
  start_p = [DATA['start']['x'],DATA['start']['y']]
  goal_p = [DATA['goal']['x'],DATA['goal']['y']]

  # Create world and Run mr_robot
  @maze = MazeGame.new
  @maze.create_maze_game(start_p,goal_p,DATA['dimensions']['x'],DATA['dimensions']['y'],DATA['wall'])

end



