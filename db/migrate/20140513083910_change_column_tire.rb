class ChangeColumnTire < ActiveRecord::Migration
  def change
    change_column :bicycles, :tire, :float
  end
end
