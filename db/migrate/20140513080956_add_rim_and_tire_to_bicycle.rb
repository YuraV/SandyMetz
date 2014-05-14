class AddRimAndTireToBicycle < ActiveRecord::Migration
  def change
    add_column :bicycles, :rim, :integer
    add_column :bicycles, :tire, :integer
  end
end
