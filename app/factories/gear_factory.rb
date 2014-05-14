class GearFactory
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(options)
    @chainring  = options[:chainring]
    @cog        = options[:cog]
    # @rim        = options[:rim]
    # @tire       = options[:tire]
    @wheel      = Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + (tire * 2)
    end
  end
end