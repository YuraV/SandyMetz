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
    chainring = @bicycle.chainring
    cog = @bicycle.cog
    rim = @bicycle.rim
    tire = @bicycle.tire
    gearInstance = GearFactory.new(
        chainring:  chainring,
        cog:        cog,
        rim:        rim,
        tire:       tire)
    @ratio = gearInstance.ratio
    @gearInches = gearInstance.gear_inches
  end

  private
  def find_bicycle
    @bicycle = Bicycle.find(params[:id])
  end
end
