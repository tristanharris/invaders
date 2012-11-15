class GameWindow < Gosu::Window

  def initialize(width=640, height=480, fullscreen=false)
    super
    self.caption = 'Space Invaders'
  end

  def update
    close if button_down? Gosu::Button::KbEscape
  end

end
