class Bullet < Element

  def initialize(window, x, y)
    super(window, x, y, 'media/normal_bullet.png')
  end

  def update
    @y -= 10
    @window.collisions(self) do |el|
      el.hit_by(self)
      die!
    end
  end

  def dead?
    super || y < 0
  end

end
