# annie
module Lita
  module Handlers
    class Dolphin < Handler

      route(/^shriek\s+(.+)/i, :shriek, command: true, help: {
        'shriek NAME' => 'shrieks at NAME'
      })

      def shriek(response)
        name = response.matches[0][0]
        
        response.reply("EEEEEEEEeeeeeeEEEEEEEEEEEEEeeeeeeEEEEEE #{name}")
      end
    end

    Lita.register_handler(Dolphin)
  end
end