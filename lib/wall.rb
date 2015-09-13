class Wall

 attr_reader :wall_points

  def initialize(wall)
    @wall_points = []
    parse_json_wall_to_wall_of_points(wall)
  end

  def has_valid_points?
    operator = @wall_points.each do |p|
      break false unless p.is_valid_point?
    end
    operator ? true : false
  end


  private

 # Creates a table @wall_points from points
  def parse_json_wall_to_wall_of_points(wall)
    wall.each do |p|
      @wall_points << Point.new(p[0],p[1])
    end
  end


end