#Thomas
module Lita
  module Handlers
    class Raven < Handler

	Picts = %w{
		https://robofinch.files.wordpress.com/2014/06/image-325247-full.jpg
		https://i.ytimg.com/vi/LNskaLfLt6Q/maxresdefault.jpg
		http://www.toyboxcollection.com/wp-content/uploads/post_pics/gothitropolis-raven/gothitropolis-raven-pose-09.jpg
		https://i1.wp.com/thefwoosh.com/wp-content/uploads/2013/07/DSC_0059.jpg
		https://i1.wp.com/thefwoosh.com/wp-content/uploads/2015/01/IMG_2111-800x413.jpg?resize=740%2C382
		https://ksr-ugc.imgix.net/assets/000/719/526/0341f0e1a0c484bbe22d94fe30025f8e_original.jpg?v=1372887435&w=680&fit=max&auto=format&q=92&s=1c1c6b5f143bde61a37795e7e4b2967f
		https://ksr-ugc.imgix.net/assets/000/719/291/d1259aa27c504ba2d1c2a8c430e1bcff_original.jpg?v=1372884175&w=680&fit=max&auto=format&q=92&s=f37f8b53c44cbbb6ff563daf2b778f3d
		https://ksr-ugc.imgix.net/assets/000/719/296/57e58df142a54e7492f3556fe948d799_original.jpg?v=1372884323&w=680&fit=max&auto=format&q=92&s=dbbba8f752d607291e0dd1408b039c46
		https://ksr-ugc.imgix.net/assets/000/719/301/2950ad5f9e0178477b6fd4298bde342e_original.jpg?v=1372884381&w=680&fit=max&auto=format&q=92&s=cf7bf8a9bb223ac4cf657c48bd16b610
		https://ksr-ugc.imgix.net/assets/000/719/303/298ea5e6e268b3361da4fa975e11454c_original.jpg?v=1372884414&w=680&fit=max&auto=format&q=92&s=65b15b111757a692e095954a34d4db52
		https://ksr-ugc.imgix.net/assets/000/719/313/7c8b314a7f8aad63e1c4cdbd87ebb748_original.jpg?v=1372884561&w=680&fit=max&auto=format&q=92&s=f8ec3dc4d98ccbd844cc1e987eebb8fb
		https://ksr-ugc.imgix.net/assets/000/719/315/36b39c08045445ca18d183a3fa346d9e_original.jpg?v=1372884599&w=680&fit=max&auto=format&q=92&s=050cd46b70b3db68b5f6f13088042535
		
	}

    route(/^kraww\s+(.+)/i, :kraww, command: true, help: {
        'kraww NAME' => 'Raven warrior greets NAME'
      })
	route(/birdwarrior/i, :bomb, command: false, help: {
        'birdwarrior' => 'shows a badass avian warrior'
      })
	route(/birdarmy$/i, :lonebomb, command: false, help: {
        'birdarmy' => 'shows an avian warrior in the bird army'
      })

	route(/birdarmy\s+(\d)/i, :multibomb, command: false, help: {
        'birdarmy NUMBER' => 'shows some badass avian warriors in the bird army'
      })
	route(/birdgang/i, :notbirds, command: false, help: {
        'birdgang' => 'display rappers from harlem, not birds'
      })

	  def greet(response)
        name = response.matches[0][0]
        response.reply("kraww #{name} kraww kraww")
      end
    
	  def bomb(response)
		response.reply(Picts.sample)
	  end

  	  def lonebomb(response)
		response.reply(Picts.sample)
	  end

	  def multibomb(response)
		number = response.matches[0][0].to_i
		response.reply(Picts.sample(number))
	  end

	  def notbirds(response)
        response.reply("https://d2d9cnk8doncvf.cloudfront.net/content-images/contentimage/no-slug/120e043d6c451e63e1a2141199f42ea4.jpg")
      end
	end
  	

    Lita.register_handler(Raven)
  end
end
