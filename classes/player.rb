class Player

  def initialize(window)
    @image = Gosu::Image.new(window, 'media/ship.png')
    @x, @y = 100, 100
  end

  def draw
    @image.draw(@x, @y,1)
  end

  def move(direction)
    @x += (direction == :left ? -1 : 1) * 10
  end

end
