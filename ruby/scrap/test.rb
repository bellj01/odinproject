class MyCar
  attr_accessor :color, :model, :speed
  attr_reader :year

  def initialize(y, c, m)
    @speed = 0
    @year = y
    @color = c
    @model = m
  end

  def speed_up(rate)
    self.speed += rate
    puts self.speed
  end

  def slow_down(rate)
    self.speed -= rate
    puts self.speed
  end

  def car_off
    self.speed = 0
    puts self.speed
  end

  def info
    "#{year}, #{color}, #{model}, #{speed}"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new color is #{color}!"
  end



end

tsl = MyCar.new(1991, "Red", "Tesla")
puts tsl.info
tsl.spray_paint("black")