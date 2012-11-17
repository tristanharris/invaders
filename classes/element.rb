class Element

  def initialize(window, x, y, image_file)
    @window = window
    @image = Gosu::Image.new(window, image_file)
    @x, @y = x, y
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def update
  end

  def dead?
    false
  end

  private
  def center
    [@x + @image.width / 2, @y - @image.height / 2]
  end

end
