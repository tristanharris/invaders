class Element

  attr_reader :x, :y

  def initialize(window, x, y, image_file)
    @window = window
    @image = Gosu::Image.new(window, image_file)
    @x, @y = x, y
    @dead = false
  end

  def width
    @image.width
  end

  def height
    @image.height
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def update
  end

  def dead?
    @dead
  end

  def touching?(other)
    if @x >= other.x and @x <= other.x + other.width then
      if @y >= other.y and @y <= other.y + other.height then
        true
      end
    else
      false
    end
  end

  def hit_by(other)
  end

  private
  def center
    [@x + @image.width / 2, @y - @image.height / 2]
  end

  def die!
    @dead = true
  end

  def bound(direction, limit=:max)
    case limit
      when :max
        case direction
          when :x
            size = :width
          when :y
            size = :height
        end
        return @window.send(size) - @image.send(size)
      when :min
        return 0
    end
  end

end
