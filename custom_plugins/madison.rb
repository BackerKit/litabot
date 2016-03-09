#kaz
module Lita
  module Handlers
    class Madison < Handler

      route(/^hi\s+(.+)/i, :greet, command: true, help: {
        'hi NAME' => 'says hi to NAME'
      })

      def madi(response)
        name = response.matches[0][0]
        
        response.reply("Bwahababa #{name}")
      end
    end

    Lita.register_handler(Madison)
  end
end
