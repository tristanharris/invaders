$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'classes'))
require 'gosu'

require 'game_window'
require 'player'

window = GameWindow.new

window.show
