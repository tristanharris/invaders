class Player

  def initialize(window)
    @image = Gosu::Image.new(window, 'media/ship.png')
  end

  def draw
    @image.draw(100,100,1)
  end

end
