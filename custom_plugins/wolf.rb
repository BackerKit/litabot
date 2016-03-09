#WolfMan
module Lita
  module Handlers
    class Wolf < Handler

      route(/^howl\s+(.+)/i, :howl, command: true, help: {
        'howl NAME' => 'howls NAME'
      })

      def howl(response)
        name = response.matches[0][0]
        
        response.reply("OwwwoooOOOOH #{name}")
      end
    end

    Lita.register_handler(Wolf)
  end
end
