module Robot
  extend Robot
  attr_accessor :goal, :wall, :dimension_x, :dimension_y, :black_list

  @path = []
  @black_list = []
  @exit = false

  def find_path(x,y)
      if out_of_maze?(x,y) # next step is out off maze
        false
      elsif is_goal?(x,y) # next step is goal
        @path << [x,y] unless @path.include? [x,y]
        @exit = true
        true
      elsif is_wall?(x,y) || @path.include?([x,y]) # next step is wall or previous point
        false
      elsif !@exit
        @path << [x,y] unless @path.include? [x,y] # push coordinates if not exist in array
        if @path.include?([x,y]) && @exit == false
          find_path(x,y+1) unless @exit
          find_path(x+1,y) unless @exit
          find_path(x,y-1) unless @exit
          find_path(x-1,y) unless @exit
          @path.pop unless @exit
        end
      end
  end


  def is_goal?(x,y)
    x == @goal.point_x && y == @goal.point_y
  end

  def is_wall?(x,y)
    @black_list.include?([x,y])
  end

  def out_of_maze?(x,y)
    (x < 1 || x > @dimension_x) || (y < 1 || y > @dimension_y)
  end

  def create_blacklist
    @wall.wall_points.each do |i|
      @black_list << [i.point_x,i.point_y]
    end
  end

  def print_path
    if @exit
      puts '============= Maze Solving ==================='
      puts "The goal is #{@path.last}"
      puts "The path is: #{@path}"
      puts '=============================================='
    else
      puts 'I don\'t solve the problem :('
    end

  end

end

