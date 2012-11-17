class Bullet

  def initialize(window, x, y)
    @window = window
    @image = Gosu::Image.new(window, 'media/normal_bullet.png')
    @x, @y = x, y
  end

  def draw
    @image.draw(@x, @y,1)
  end

  def update
    @y -= 10
  end

end
