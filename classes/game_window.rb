class GameWindow < Gosu::Window

  def initialize(width=640, height=480, fullscreen=false)
    super
    self.caption = 'Space Invaders'

    @player = Player.new(self)
    @elements = []
  end

  def update
    close if button_down? Gosu::Button::KbEscape

    @player.move(:left) if button_down? Gosu::Button::KbLeft
    @player.move(:right) if button_down? Gosu::Button::KbRight
    @player.shoot if button_down? Gosu::Button::KbSpace

    @elements.reject! {|el| el.update; el.dead?}
  end

  def draw
    @player.draw
    @elements.each {|el| el.draw}
  end

  def <<(element)
    @elements << element
  end

end
