require '../blinkofant-ruby/screen'
require '../blinkofant-ruby/device'

require './pixel'
require './joystick'
require './level'

class Game
  @@fps = 25

  def self.run
    screen = Blinkofant::Screen.new(1)
    device = Blinkofant::Device.new
    j1 = Joystick.new
    p1 = Pixel.new(screen)

    level = Level.new(screen)
    loop {
      _start = Time.now.usec
      
      level.move
      level.draw

      p1.action(j1.action)
      p1.draw
      device.flush(screen)
      sleep(1/@@fps.to_f)

      _end = Time.now.usec
      puts "#{(_end - _start)/1000.0} ms"
    }
  end
end

Game.run