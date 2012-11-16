class Player

  def initialize(window)
    @window = window
    @image = Gosu::Image.new(window, 'media/ship.png')
    @x, @y = window.width / 2, window.height - @image.height
  end

  def draw
    @image.draw(@x, @y,1)
  end

  def move(direction)
    @x += (direction == :left ? -1 : 1) * 10
    @x = [[0, @x].max, @window.width - @image.width].min
  end

end
