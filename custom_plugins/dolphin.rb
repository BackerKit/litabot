# annie
module Lita
  module Handlers
    class Dolphin < Handler
    PICS = %w{
        http://www-tc.pbs.org/wgbh/nova/next/wp-content/uploads/2014/04/dolphin-lasers-1024x576.jpg
        http://static.ddmcdn.com/gif/dolphin-births-hurricane-katrina-675560-.jpg
        https://static-secure.guim.co.uk/sys-images/Guardian/Pix/pictures/2008/04/17/dolphin11a.jpg
        http://img.thesun.co.uk/multimedia/archive/01603/Bottlenose_dolphin_1603341a.jpg
        http://whateveraspidercan.com/files/2014/11/Spider-Man-Dolphin1.jpg
        http://previews.123rf.com/images/marishaz/marishaz1108/marishaz110800299/10290807-Dolphin-gives-butterfly-flower-Stock-Vector-dolphin-fish-rainbow.jpg
        http://www.animalfactsencyclopedia.com/images/animalextremeclose-up-dolphin.jpg
        http://amazinglist.net/wp-content/uploads/2013/03/Chinese-White-Dolphin.jpg
        https://upload.wikimedia.org/wikipedia/commons/2/26/Dolphin_Sashimi.jpg
        http://s.hswstatic.com/gif/dolphin-pictures-11.jpg
        http://www.mauiarts.com/dolphins/images/Dolphin-Dream.jpg
        http://www.alaskacommons.com/wp-content/uploads/2013/04/soon-dolphin-creepy.jpg
    }
      route(/^shriek\s+(.+)/i, :shriek, command: true, help: {
        'shriek NAME' => 'shrieks at NAME'
      })
        route(/^dolphinbomb\s(\d)/, :dolphinbomb_multi, command: false, help: {
        'dolphinbomb NUMBER' => 'shows you a magical friend(s)'
      })


      def shriek(response)
        name = response.matches[0][0]
        
        response.reply("EEEEEEEEeeeeeeEEEEEEEEEEEEEeeeeeeEEEEEE #{name}")
      end
      def dolphinbomb(response)
        response.reply(PICS.sample)
      end
      def dolphinbomb_multi(response)
        number =  response.matches[0][0].to_1
        response.reply(PICS.sample(number))
      end
      
    end

    Lita.register_handler(Dolphin)
  end
end