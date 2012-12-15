require '../blinkofant-ruby/screen'
require '../blinkofant-ruby/device'

module BlinkofantTunnel
	scr = Screen.new(panels = 1)
	dev = Device.new

	while(true)
		scr[1][1]
		device.flush(scr)
	end
end
