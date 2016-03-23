# max
module Lita
  module Handlers
    class Porcupine < Handler

        PICS = %w{
            http://www.acuteaday.com/blog/wp-content/uploads/2011/06/baby-porcupine-and-mother.jpg
            http://cincinnatizoo.org/wp-content/uploads/2013/03/porcupine.jpg
            http://www.factzoo.com/sites/all/img/mammals/rodents/porcupine/porcupine-quills.jpg
            http://cdn1.arkive.org/media/31/31F74543-69AB-44FD-88C7-81A0B2174100/Presentation.Large/Cape-porcupine.jpg
            https://upload.wikimedia.org/wikipedia/commons/8/83/Porcupine-BioDome.jpg
            http://cdn1.arkive.org/media/6D/6DF8B059-7B8A-49C9-AE1E-63D7ACF72B9F/Presentation.Large/North-American-porcupine-mother-and-young-.jpg
            https://pixabay.com/static/uploads/photo/2015/09/25/10/45/porcupines-957114_960_720.jpg
            http://www.amieestubbs.com/img/s/v-3/p123823200-3.jpg
            https://i.ytimg.com/vi/UGz8jcbJjRw/maxresdefault.jpg
            http://encouragingwomen.com/wp-content/uploads/2014/03/porcupine-2.jpg
            https://pixabay.com/static/uploads/photo/2014/11/06/12/46/porcupines-519145_960_720.jpg
            http://jun-cdn.com/sites/default/files/imagecache/superphoto/13786557.jpg
            http://portfolio.jeffwendorff.com/img/s/v-3/p92101031-3.jpg
            http://akonthego.com/blog/wp-content/uploads/2015/02/8868PorcupinePawP.jpg
            http://3.bp.blogspot.com/_xJiJXKsXJVo/S9bN0h60vhI/AAAAAAAABZk/fCKnI1fXqB8/s1600/porcupine.jpg
        }
        
      route(/^poke\s+(.+)/i, :poke, command: true, help: {
        'poke NAME' => 'pokes NAME'
      })
      
     route(/^porc-u-bomb me/i, :bomb, command: false, help: {
        'porc-u-bomb me' => 'shows you a random pokey friend'
      })

      def poke(response)
        name = response.matches[0][0]
        
        response.reply("POKEPOKEPOKEPOKEPOKEPOKEPOKEPOKEPOKE -----> #{name} <------")
      end
      
      def bomb(response)
        response.reply(PICS.sample)
      end
      
    end

    Lita.register_handler(Porcupine)
  end
end
