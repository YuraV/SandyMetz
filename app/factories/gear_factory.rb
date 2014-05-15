class GearFactory
  attr_reader :chainring, :cog, :wheel

  def initialize(bicycle, wheel)
    @chainring  = bicycle[:chainring]
    @cog        = bicycle[:cog]
    @wheel      = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end