class GearFactory
  attr_reader :chainring, :cog, :wheel

  def initialize(arg)
    # binding.pry
    @chainring  = arg.deep_fetch(:bicycle).chainring
    @cog        = arg.deep_fetch(:bicycle).cog
    @wheel      = arg.deep_fetch(:wheel)
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