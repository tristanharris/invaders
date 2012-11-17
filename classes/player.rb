class Player

  def initialize(window)
    @window = window
    @image = Gosu::Image.new(window, 'media/ship.png')
    @x, @y = window.width / 2, window.height - @image.height
    @reload_duration = 0.05
    @last_shot = Time.at(0)
  end

  def draw
    @image.draw(@x, @y,1)
  end

  def move(direction)
    @x += (direction == :left ? -1 : 1) * 10
    @x = [[0, @x].max, @window.width - @image.width].min
  end

  def shoot
    return if reloading?
    @window << Bullet.new(@window, *center)
    @last_shot = Time.now
  end

  def reloading?
    Time.now - @last_shot < @reload_duration
  end

  def center
    [@x + @image.width / 2, @y - @image.height / 2]
  end

end
