#kaz
module Lita
  module Handlers
    class Madison < Handler
      
      PICS = %w{
        https://instagram.fsjc1-2.fna.fbcdn.net/t51.2885-15/e35/929358_1549601838671940_1062416404_n.jpg
        https://instagram.fsjc1-2.fna.fbcdn.net/t51.2885-15/e35/1173144_470287096500982_994568748_n.jpg
        https://instagram.fsjc1-2.fna.fbcdn.net/t51.2885-15/e35/12716661_695019547267841_1404384584_n.jpg
        https://instagram.fsjc1-2.fna.fbcdn.net/t51.2885-15/e35/12519215_424122384451434_1352119665_n.jpg
        https://instagram.fsjc1-2.fna.fbcdn.net/t51.2885-15/e35/12383281_1667332386838630_743506755_n.jpg
      }

      route(/^madibomb\s(\d)/, :bomb, command: false, help: {
        'madibomb (number)' => 'get random madi'
      })
      
      def bomb(response)
        number = response.matches[0][0].to_i
        response.reply(PICS.sample(number))
      end
    end

    Lita.register_handler(Madison)
  end
end
