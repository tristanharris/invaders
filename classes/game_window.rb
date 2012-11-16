class GameWindow < Gosu::Window

  def initialize(width=640, height=480, fullscreen=false)
    super
    self.caption = 'Space Invaders'

    @player = Player.new(self)
  end

  def update
    close if button_down? Gosu::Button::KbEscape

    @player.move(:left) if button_down? Gosu::Button::KbLeft
    @player.move(:right) if button_down? Gosu::Button::KbRight
  end

  def draw
    @player.draw
  end

end
