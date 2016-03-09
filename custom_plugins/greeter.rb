module Lita
  module Handlers
    class Greeter < Handler

      route(/^greet\s+(.+)/i, :greet, command: false, help: {
        'greet NAME' => 'says sup to NAME'
      })

      def greet(response)
        name = response.matches[0][0]
        
        response.reply("Hi #{name}")
      end
    end

    Lita.register_handler(Greeter)
  end
end
