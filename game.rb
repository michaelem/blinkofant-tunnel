require '../blinkofant-ruby/screen'
require '../blinkofant-ruby/device'

module BlinkofantTunnel
	scr = Blinkofant::Screen.new(panels = 1)
	dev = Blinkofant::Device.new

	while(true)
		scr[1,1] = true
		dev.flush(scr)
	end
end
