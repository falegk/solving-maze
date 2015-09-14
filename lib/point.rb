class Point

  attr_accessor :point_x, :point_y

  def initialize(point_x, point_y)
      @point_x, @point_y = point_x, point_y
  end


  def is_valid_point?
    @point_x > 0 && @point_y > 0
  end

  def is_point_in_world?(dimensions_x,dimensions_y)
    @point_x <= dimensions_x && @point_y <= dimensions_y
  end

end