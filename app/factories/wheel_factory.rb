class WheelFactory
  attr_reader :rim, :tire

  def initialize(options)
    @rim    = options[:rim]
    @tire   = options[:tire]
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference

    diameter * Math::PI
  end
end