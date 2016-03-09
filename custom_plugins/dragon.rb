module Lita
  module Handlers
    class Dragon < Handler

      route(/^flame\s+(.+)/i, :flame, command: false, help: {
        'flame NAME' => 'flamess NAME'
      })

        route(/^flamebomb\s+(.+)/i, :bomb, command: false, help: {
        'flamebomb me' => 'LIGHTS THE WORLD ON FIRE'
      })
      
      def flame(response)
        name = response.matches[0][0]
        
        response.reply("The dragon takes a deep breath and bathes #{name} in flame.")
      end
      
      def bomb(response)
        response.reply('http://korrektivpress.com/wp-content/uploads/2013/12/world-on-fire-the-end.jpg')
      end
    end

    Lita.register_handler(Dragon)
  end
end
