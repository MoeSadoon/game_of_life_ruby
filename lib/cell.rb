class Cell
  attr_reader :alive


  def initialize
    @alive = true
  end

  def kill
    @alive = false
  end

end
