# Anna
module Lita
  module Handlers
    class Dog < Handler
        
        PICS = %w{
            http://www.petpicturegallery.com/pictures/dogs/beagles/674-beagle_puppies.jpg
            https://s-media-cache-ak0.pinimg.com/236x/90/eb/32/90eb32bc73e010067b15e08cac3ff016.jpg
            https://i.ytimg.com/vi/1QkK3ts_7ok/maxresdefault.jpg
            http://wowoon.com/anh/width248/2016/31-1/beagle-puppy-with-something-to-say-beagle-puppy-beagles-dog-beagles-puppies-beagle-puppies-beagle-s-cats-and-dogs-beagle-yawn-puppy-yawn-animal.jpg
            http://2.bp.blogspot.com/-4bASyCWODBM/Unur-kszRBI/AAAAAAAAw7Q/3YHwDqlMyZo/s1600/cute-beagle-puppy-002.jpg
            https://i.ytimg.com/vi/f8qxlkbGGyE/maxresdefault.jpg
            http://thescrumptiouspumpkin.com/wp-content/uploads/2012/05/baby-beagle-puppy-chewing-rope.jpg
            http://www.mindyravinesphotography.com/photography-blog/wp-content/uploads/2010/02/Commercial-Photography-Beagles_05.jpg
            http://www.lifewithdogs.tv/wp-content/uploads/2015/01/150116-KaleChip2.jpg
            https://s-media-cache-ak0.pinimg.com/736x/a3/e3/33/a3e333fc0fd2f6f646ebfef03bbccc0a.jpg
            https://s-media-cache-ak0.pinimg.com/736x/76/95/ec/7695ecfb2e607e9b3aef479c11cfe749.jpg
            https://farm4.staticflickr.com/3783/14274212035_4104ba8cd2_z.jpg
            http://wowoon.com/anh/width248/2015/11-12/top-5-most-affectionate-dog-breeds-beagle-is-on-3rd-click-the-pic-for-complete-list-nap-time-animals-dogs-pets-beagles-baby-beagle-puppy-beagle-pup.jpg
            http://d21vu35cjx7sd4.cloudfront.net/dims3/MMAH/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=http%3A%2F%2Fs3.amazonaws.com%2Fassets.prod.vetstreet.com%2F87%2Ff734d09e8c11e0a2380050568d634f%2Ffile%2FBeagle-4-645mk062311.jpg
        }

      route(/^bark\s+(.+)/i, :bark, command: true, help: {
        'bark NAME' => 'barks NAME'
      })
       route(/^bark-bomb-me/, :bomb, command: false, help: {
        'barkbombme NAME' => 'shows a random dog friend'
      })

      def bark(response)
        name = response.matches[0][0]
        
        response.reply("Woof! #{name}")
      end
      
      def bomb(response)
          response.reply(PICS.sample)
        end
    end

    Lita.register_handler(Dog)
  end
end
