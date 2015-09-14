require 'json'

class MazeGame

  attr_reader :world, :wall

  def create_wall(wall)
    Wall.new(wall)
  end

  def create_world(start_p,goal_p,x,y,wall)
    World.new(start_p,goal_p,x,y,wall)
  end

  def create_point(x,y)
    Point.new(x,y)
  end

  def create_maze_game(start_p,goal_p,dimensions_x,dimensions_y,wall)

    # initialize wall
    @wall = create_wall(wall)
    unless @wall.has_valid_points?
      abort 'Wall invalid points'
    end

    # initialize start and goal points
    @start_p = create_point(start_p[0],start_p[1])
    @goal_p = create_point(goal_p[0],goal_p[1])
    unless @start_p.is_valid_point? && @goal_p.is_valid_point?
      abort "Start or Goal point is invalid\nPlease pass values greater than zero"
    end
    unless @start_p.is_point_in_world?(dimensions_x,dimensions_y) && @goal_p.is_point_in_world?(dimensions_x,dimensions_y)
      abort "Start or Goal point is out of the world\n"
    end

    # initialize world
    @world = create_world(@start_p,@goal_p,dimensions_x,dimensions_y, @wall)
    unless @world.has_the_world_valid_dimensions?
      abort "The world can not be less than 1x1"
    end

    unless @world.is_wall_belongs_in_world?
      abort "World is invalid"
    end

    # Run mr robot to solve maze
    if @world
      @world.mr_robot(@start_p.point_x,@start_p.point_y)
    end

  end




end
