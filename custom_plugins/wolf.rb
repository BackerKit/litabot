#WolfMan
module Lita
  module Handlers
    class Wolf < Handler

        PICS = %w{
            https://s-media-cache-ak0.pinimg.com/236x/30/6c/c4/306cc45891866c0ccbbe7ff8ba75f9d2.jpg
            https://s-media-cache-ak0.pinimg.com/236x/de/c1/b3/dec1b36119b6c8250c65c5c77dacf37e.jpg
            https://s-media-cache-ak0.pinimg.com/236x/03/a0/d7/03a0d7dcbc9a0e5ac59aa68036356260.jpg
            https://s-media-cache-ak0.pinimg.com/236x/de/4c/1d/de4c1d29aff8e5cd86d5c231df56a52a.jpg
            http://www.babyanimalzoo.com/wp-content/uploads/2012/06/baby-wolf-back.jpg
            http://in1.ccio.co/d6/n7/IC/babywolfcub600x618.jpg
            http://www.zooborns.com/.a/6a010535647bf3970b01910221699e970c-500wi
            https://cbstampa.files.wordpress.com/2013/01/102139550.jpg?w=594&h=360&crop=1
            http://www.funonline.in/wp-content/uploads/2012/04/Mother-Wolf-with-her-Baby-Cub-Wallpaper.jpg
            http://www.natgeocreative.com/comp/05/429/93844.jpg
            https://meanmaureen.files.wordpress.com/2015/03/screen-shot-2015-03-19-at-2-23-08-pm.png
            https://38.media.tumblr.com/97303369604dca5e0673ba5cd8ad7c34/tumblr_n4s4zjJKQT1rtks5uo8_500.gif
            http://gifrific.com/wp-content/uploads/2013/12/baby-wolf-lies-down.gif
            https://45.media.tumblr.com/353f6495fd59c1b5bc5e7bbb1fb8950b/tumblr_mxrz42SCuT1spoxq8o1_500.gif
            http://iandepartment.com/puppies_bg/67.gif
            http://40.media.tumblr.com/b597bf4f6b3e55d0b159304f382d5deb/tumblr_nkrzcbtxTG1s8jzx5o1_500.jpg
    
        }

      route(/^howl\s+(.+)/i, :howl, command: false, help: {
        'howl NAME' => 'howls NAME'
      })
      
       route(/wolfbomb/, :bomb, command: false, help: {
        'wolfbomb' => 'Shows you a lupine friend'
      })
      
      route(/wolfpack\s(\d)/, :multibomb, command: false, help: {
        'wolfbomb NUMBER' => 'Shows you many a lupine friend'
      })
      

      def howl(response)
        name = response.matches[0][0]
        response.reply("OwwwoooOOOOH #{name}")
      end

      def bomb(response)
          response.reply(PICS.sample)
      end
      
      def multibomb(response)
          number = response.matches[0][0].to_i
          response.reply(PICS.sample(number))
      end
      
    end

    Lita.register_handler(Wolf)
  end
end
