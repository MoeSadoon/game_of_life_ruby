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

  def end_round
    if self.neighbours.count < 2 || self.neighbours.count > 3
      self.kill
      @grid.cells.delete(self)
    end

  end

  def kill
    @alive = false
  end

  def neighbours
    @neighbours = []
    @grid.cells.each do |cell|
      #if neighbour is directly north of cell
      if self.x == cell.x && self.y == cell.y-1
        @neighbours << cell
      end
      #if neighbour is directly north-east of cell
      if self.x == cell.x-1 && self.y == cell.y-1
        @neighbours << cell
      end
      #if neighbour is directly east of cell
      if self.x == cell.x-1 && self.y == cell.y
        @neighbours << cell
      end
      #if neighbour is directly south of cell
      if self.x == cell.x && self.y == cell.y+1
        @neighbours << cell
      end
    end

    return @neighbours
  end

end
