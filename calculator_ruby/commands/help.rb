require 'rss'
require 'open-uri'

module SlackCalulationBot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        client.say(channel: data.channel, text: 'This is a calculator Ruby Bot. You tyoe your operation (ex: =7+2) and the bot with do calcution for using Ruby. For more info, click here: https://github.com/CornetS28/rails-calc-bot')
      end
    end
  end
end
