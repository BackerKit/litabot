module Lita
  module Handlers
    class Dragon < Handler
      
      PICS = %w{
        http://media-hearth.cursecdn.com/avatars/148/449/432.png
        http://blogs.scientificamerican.com/but-not-simpler/files/2014/01/Smaugmoviestill1.jpg
        http://gordlaws.co.za/wp-content/uploads/2013/02/Puff.jpg
        https://upload.wikimedia.org/wikipedia/commons/f/f5/Chinese_Dragon_2012.jpg
        http://ecx.images-amazon.com/images/I/51-QGBLRk2L.jpg
        http://pogopogona.com/content/uploads/Bearded-dragon-threatened-e1378589346797.jpg
      }
        
        

      route(/^flame\s+(.+)/i, :flame, command: false, help: {
        'flame NAME' => 'flames NAME'
      })


      route(/^flamebomb/i, :bomb, command: false, help: {
        'flamebomb ANYTHING' => 'LIGHTS THE WORLD ON FIRE'
      })
      
      route(/^dragonflight\s(\d)/, :dragonflight, command: false, help: {
        'dragonflight NUMBER' => 'summons a flight of dragons'  
      })
      
      def flame(response)
        name = response.matches[0][0]
        
        response.reply("The dragon takes a deep breath and bathes #{name} in flame.")
      end
      
      def flame(response)
        name = response.matches[0][0]
        
        response.reply("The dragon takes a deep breath and bathes #{name} in flame.")
      end
      
      def dragonflight(response)
        number = response.matches[0][0].to_i
        response.reply("The dragons gather!")
        response.reply(PICS.sample(number))
      end
      
      def bomb(response)
        response.reply("The dragon tires of this mortal realm. It takes a deep breath.")
        response.reply(PICS.sample)
        response.reply('http://korrektivpress.com/wp-content/uploads/2013/12/world-on-fire-the-end.jpg')
      end
    end

    Lita.register_handler(Dragon)
  end
end
