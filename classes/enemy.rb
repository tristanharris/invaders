class Enemy < Element

  def initialize(window, x, y)
    super(window, x, y, 'media/normal_enemy.png')
    @move = 2
  end

  def update
    @x += @move
    @move = @move.abs if @x + @move < bound(:x, :min)
    @move = -@move.abs if @x + @move > bound(:x, :max)
  end

  def hit_by(other)
    die!
  end

end
