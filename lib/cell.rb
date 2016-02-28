class Cell
  attr_reader :alive, :x, :y


  def initialize(x=2,y=2)
    @alive = true
    @x = x
    @y = y
  end

  def kill
    @alive = false
  end

end
