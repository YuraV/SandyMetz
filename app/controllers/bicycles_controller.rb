class BicyclesController < ApplicationController
  before_filter :find_bicycle, except: [:index, :new, :create]
  respond_to :html
  def index
    @bicycles = Bicycle.all
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @bicycle = Bicycle.create(params[:bicycle])
    respond_with @bicycle
  end

  def show
    wheel = WheelFactory.new(@bicycle)
    gear = GearFactory.new(
        bicycle:  @bicycle,
        wheel:    wheel
    )
    @bike = BikeAttributeFactory.new(gear.ratio, gear.gear_inches, gear.diameter, wheel.circumference)
  end

  private
  def find_bicycle
    @bicycle = Bicycle.find(params[:id])
  end
end
