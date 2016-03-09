#ro 
module Lita
  module Handlers
    class Goat < Handler

      route(/^yell\s+(.+)/i, :yell, command: true, help: {
        'yell NAME' => 'yells NAME'
      })

      def yell(response)
        name = response.matches[0][0]
        
        response.reply("SCREEEEEEEEEEEEEEAAAAAAM #{name} !!!!!!!!!!!!!!!")
      end
    end

    Lita.register_handler(Goat)
  end
end
