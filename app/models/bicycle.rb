class Bicycle < ActiveRecord::Base
  attr_accessible :chainring, :cog, :name, :rim, :tire
end
