require '../blinkofant-ruby/screen'
require '../blinkofant-ruby/device'

module BlinkofantTunnel
	scr = Blinkofant::Screen.new(1)
	dev = Blinkofant::Device.new

	while(true)
		puts 
		scr[1,1] = true
		scr[5,5] = true
		dev.flush(scr)
		sleep(0.1)
	end
end
