# Michael
module Lita
  module Handlers
    class Bulbasaur < Handler

      route(/^bulb\s+(.+)/i, :bulb, command: true, help: {
        'bulb NAME' => 'says sup to NAME'
      })

      def bulb(response)
        name = response.matches[0][0]
        
        response.reply("Vine Whip!")
      end
    end

    Lita.register_handler(Bulbasaur)
  end
end
