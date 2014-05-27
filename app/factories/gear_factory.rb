class GearFactory
  attr_reader :chainring, :cog, :wheel

  def initialize(arg)
    @chainring  = arg.deep_fetch(:bicycle).try(:chainring) || 40
    @cog        = arg.deep_fetch(:bicycle).try(:cog) || 18
    @wheel      = arg[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
  end
end