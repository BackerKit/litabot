#ro 
module Lita
  module Handlers
    class Goat < Handler
        
        PICS = %w{
            http://41.media.tumblr.com/ce857505470687df291e693d7b711eed/tumblr_mv4vkhO6ON1ssk8cyo1_1280.jpg
            http://41.media.tumblr.com/d71db1a3990ddc4fc7c374e7a3e31dd0/tumblr_inline_nlhmxhoBMf1r3bfh0_500.jpg
            http://cdn.playbuzz.com/cdn/acd9517b-6504-4869-9bce-9fa680212531/3be33108-d20b-4b37-acf5-a478f8efabe8.jpg
            http://static.spin.com/files/130221-taylor-swift-yelling-goats.jpg
            http://minnesotasnewcountry.com/files/2011/09/goatfinal.jpg
            http://www.doorsixteen.com/wpcms/wp-content/uploads/2013/02/goats.jpg
            https://i.ytimg.com/vi/e8rO02kymHw/maxresdefault.jpg
            http://wac.450f.edgecastcdn.net/80450F/wyrk.com/files/2011/07/bieber-and-goat-072911-ftr.jpg?w=600&h=0&zc=1&s=0&a=t&q=89
            https://s-media-cache-ak0.pinimg.com/736x/05/4c/f7/054cf7d8ce53118675194b312cc662f9.jpg
            https://i.ytimg.com/vi/6shqTBNR6pA/maxresdefault.jpg
            https://s-media-cache-ak0.pinimg.com/236x/43/ca/8c/43ca8cf2552a30f3e56f27bea93a9073.jpg
            http://41.media.tumblr.com/bc4b18055f8f131ed6b698ab664973c1/tumblr_n96r3wgLWi1r7yxrco8_500.jpg
            http://40.media.tumblr.com/c51b90b7f9bf81a75aea1cfbd45276e1/tumblr_n96r3wgLWi1r7yxrco4_500.jpg
            https://40.media.tumblr.com/8b8b553f24ddf1f9f8733a554511d6ff/tumblr_nfgcahzZz11sv4rcgo1_500.jpg
            http://www.abandonstatusquo.com/wp-content/uploads/2015/11/screaming-goat.jpg
        }

      route(/^yell\s+(.+)/i, :yell, command: true, help: {
        'yell NAME' => 'yells NAME'
      })
      
      route(/^goatscream me/i, :bomb, command: false, help: {
        'goatscream me' => 'shows you a random goat bro'
      })

      def yell(response)
        name = response.matches[0][0]
        
        response.reply("SCREEEEEEEEEEEEEEAAAAAAM #{name} !!!!!!!!!!!!!!!")
      end
      
      def bomb(response)
          response.reply(PICS.sample)
      end
      
    end

    Lita.register_handler(Goat)
  end
end
