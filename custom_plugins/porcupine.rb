# max
module Lita
  module Handlers
    class Porcupine < Handler

      route(/^poke\s+(.+)/i, :poke, command: true, help: {
        'poke NAME' => 'pokes NAME'
      })

      def poke(response)
        name = response.matches[0][0]
        
        response.reply("POKEPOKEPOKEPOKEPOKEPOKEPOKEPOKEPOKE -----> #{name} <------")
      end
    end

    Lita.register_handler(Porcupine)
  end
end
