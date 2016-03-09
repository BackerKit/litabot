module Lita
  module Handlers
    class Dragon < Handler

      route(/^flame\s+(.+)/i, :flame, command: false, help: {
        'flame NAME' => 'flamess NAME'
      })

      def flame(response)
        name = response.matches[0][0]
        
        response.reply("The dragon takes a deep breath and bathes #{name} in flame.")
      end
    end

    Lita.register_handler(Dragon)
  end
end
