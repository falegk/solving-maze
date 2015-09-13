class World
  #include Robot
  attr_reader :dimension_x, :dimension_y, :wall
  attr_accessor :start, :goal

  def initialize(start_p, goal_p, dimension_x, dimension_y, wall)
    @start, @goal = start_p, goal_p
    @wall = wall
    @dimension_x = dimension_x
    @dimension_y = dimension_y
  end

  def is_wall_belongs_in_world?
    operator = @wall.wall_points.each do |p|
      break false unless p.point_x <= @dimension_x && p.point_y <= @dimension_y
    end
    operator && @wall.has_valid_points? ? true : false
  end

  def is_point_belongs_in_world?(point)
    (point.point_x <= @dimension_x && point.point_y <= @dimension_y) && point.is_valid_point? ? true : false
  end

  def has_the_world_valid_dimensions?
    @dimension_x > 0 && @dimension_y > 0
  end

  def mr_robot(x,y)
    Robot::goal = @goal
    Robot::wall = @wall
    Robot::create_blacklist
    Robot::dimension_x = @dimension_x
    Robot::dimension_y = @dimension_y
    Robot::find_path(x,y)
    Robot::print_path
  end


end