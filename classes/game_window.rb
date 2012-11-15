class GameWindow < Gosu::Window

  def initialize(width=640, height=480, fullscreen=false)
    super
    self.caption = 'Space Invaders'

    @image = Gosu::Image.new(self, 'media/ship.png')
  end

  def update
    close if button_down? Gosu::Button::KbEscape
  end

  def draw
    @image.draw(100,100,1)
  end

end
