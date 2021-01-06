require 'rss'
require 'open-uri'

module SlackCalulationBot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      operator '='
      command 'calculate'

      def self.call(client, data, match)
        result = Dentaku::Calculator.new.evaluate(match[:expression]) if match.names.include?('expression')
        result = result.to_s if result
        if result && result.length > 0
          client.say(channel: data.channel, text: result)
        else
          client.say(channel: data.channel, text: 'Please type your operation!')
        end
      rescue StandardError => e
        client.say(channel: data.channel, text: "Too bad, #{e.message}.")
      end
    end
  end
end
