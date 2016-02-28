require './lib/grid.rb'

class Cell
  attr_reader :alive, :x, :y


  def initialize(grid,x=2,y=2)
    @alive = true
    @x = x
    @y = y
    @grid = grid
    @grid.cells << self
  end

  def kill
    @alive = false
  end

  def neighbours

  end

end
