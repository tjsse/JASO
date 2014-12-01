class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :description
      t.text :description_detail

      t.timestamps
    end
  end
end
