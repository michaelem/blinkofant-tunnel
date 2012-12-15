class Level
  def initialize(screen)
    @screen = screen
    @pos = 0

    @width = 5
    @last_align = 4

    @panels = 1
    @geometry = 
          [ Array.new(@panels * 8, false),
            Array.new(@panels * 8, false),
            Array.new(@panels * 8, false),
            Array.new(@panels * 8, false),
            Array.new(@panels * 8, false),
            Array.new(@panels * 8, false),
            Array.new(@panels * 8, false),
            Array.new(@panels * 8, false),
            Array.new(@panels * 8, false)]
  end

  def move()
    @pos = @pos + 1
    @geometry << @geometry.shift
    @geometry.last = [true, true, false, false, false, false, true, true]
  end

  def draw
    @screen.screen = @geometry
  end
end