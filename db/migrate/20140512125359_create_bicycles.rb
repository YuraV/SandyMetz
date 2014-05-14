class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :name
      t.integer :chainring
      t.integer :cog
      t.timestamps
    end
  end
end
