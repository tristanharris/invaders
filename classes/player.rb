class Player < Element

  def initialize(window)
    super(window, window.width / 2, window.height, 'media/ship.png')
    @y -= @image.height
    @reload_duration = 0.05
    @last_shot = Time.at(0)
  end

  def move(direction)
    @x += (direction == :left ? -1 : 1) * 10
    @x = [[bound(:x, :min), @x].max, bound(:x, :max)].min
  end

  def shoot
    return if reloading?
    @window << Bullet.new(@window, *center)
    @last_shot = Time.now
  end

  def reloading?
    Time.now - @last_shot < @reload_duration
  end

end
