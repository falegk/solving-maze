require 'json'
Dir['lib/*.rb'].each {|files| require_relative files }

FILE = File.read(ARGV[0])

if FILE
  DATA = JSON.parse(FILE)

  if ValidFile::valid_file(DATA)
    start_p = [DATA['start']['x'],DATA['start']['y']]
    goal_p = [DATA['goal']['x'],DATA['goal']['y']]
    dimensions_x = DATA['dimensions']['x']
    dimensions_y = DATA['dimensions']['y']
    wall = DATA['wall']

    # Create world and Run mr_robot
    @maze = MazeGame.new
    @maze.create_maze_game(start_p,goal_p,dimensions_x,dimensions_y,wall)
  end
end



