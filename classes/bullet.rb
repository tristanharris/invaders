class Bullet < Element

  def initialize(window, x, y)
    super(window, x, y, 'media/normal_bullet.png')
  end

  def update
    @y -= 10
  end

  def dead?
    @y < 0
  end

end
