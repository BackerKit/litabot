#Thomas
module Lita
  module Handlers
    class Gothitropolis < Handler

      route(/^kraww\s/i, :greet, command: false, help: {
        'kraww NAME' => 'krawws NAME'
      })

      def greet(response)
        name = response.matches[0][0]
        
        response.reply("kraww #{name} kraww kraww")
      end
    end

    Lita.register_handler(Gothitropolis)
  end
end
