# Anna
module Lita
  module Handlers
    class Dog < Handler

      route(/^bark\s+(.+)/i, :bark, command: true, help: {
        'bark NAME' => 'barks NAME'
      })

      def bark(response)
        name = response.matches[0][0]
        
        response.reply("Woof! #{name}")
      end
    end

    Lita.register_handler(Dog)
  end
end
