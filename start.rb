$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'classes'))
require 'gosu'

require 'game_window'
require 'element'
require 'player'
require 'bullet'
require 'enemy'

window = GameWindow.new

window.show
