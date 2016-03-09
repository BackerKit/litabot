# Michael
module Lita
  module Handlers
    class Bulbasaur < Handler

    PICS = %w{
    http://images2.wikia.nocookie.net/__cb20111221113429/bulbasaurfanon/images/4/43/Bulbasaur.png
    http://orig11.deviantart.net/eca3/f/2010/238/6/d/bulbasaur_by_xous54.png
    http://twinfinite.net/wp-content/uploads/2016/03/how-to-get-bulbasaur-in-pokemon-yellow.png
    http://vignette4.wikia.nocookie.net/pokemon/images/8/81/001Bulbasaur_Pokemon_Mystery_Dungeon_Explorers_of_Sky.png
    http://img03.deviantart.net/93ed/i/2011/079/2/b/bulbasaur_by_caridea-d3c1kef.png
    http://yunoinfo.com/wp-content/uploads/2013/01/bulb1.jpg
    http://orig04.deviantart.net/f515/f/2011/162/9/f/bulbasaur_by_yuuk3-d3inxsc.png
    https://therandominmyhead.files.wordpress.com/2014/03/tumblr_m1tc3uqi1b1qd8t4mo1_500.gif
    https://media.giphy.com/media/VhGB379ATvKaA/giphy.gif
    http://rs77.pbsrc.com/albums/j61/Black_kitsune_Rioku/Pokemon%20Platinum%20Animated%20Sprites/bulbasaur.gif
    http://orig02.deviantart.net/37b5/f/2013/125/1/f/_001_bulbasaur_by_nasakii-d6463d5.gif
    http://49.media.tumblr.com/tumblr_md9imv2nMf1r3ovego1_500.gif
    http://rs928.pbsrc.com/albums/ad123/slippeo/bulbasaur.gif
    http://files.gamebanana.com/img/ico/sprays/4e7f72eebd930.gif
    https://media.giphy.com/media/5ysJyiadoj3lm/giphy.gif
    http://s310.photobucket.com/user/sugarpockii/media/pokemon/bulbasaur.gif
    https://media.giphy.com/media/WTZvCdZpLkDXG/giphy.gif
    https://media.giphy.com/media/iIWW4BM6nNWTu/giphy.gif
    http://stream1.gifsoup.com/view5/2303553/bulbasaur-cute-o.gif
        
    }

      route(/^bulb\s+(.+)/i, :bulb, command: true, help: {
        'bulb NAME' => 'says sup to NAME'
      })
      
      route(/^bulba-bomb me/i, :bomb, command: true, help: {
        'bulba-bomb me' => 'shows you a random bulbasaur'
      })

    def bulb(response)
        name = response.matches[0][0]
        response.reply("Vine Whip!")
    end
    
    def bomb(response)
        response.reply(PICS.sample)
    end
end
    Lita.register_handler(Bulbasaur)
    end
  end
