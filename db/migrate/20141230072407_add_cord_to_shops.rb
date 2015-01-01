class AddCordToShops < ActiveRecord::Migration
  def change
    add_column :shops, :cord_x, :float
    add_column :shops, :cord_y, :float
  end
end
