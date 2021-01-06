$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'calculator_ruby'

SlackCalulationBot::Bot.run