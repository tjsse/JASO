class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :shop
      t.string :title
      t.float :price
      t.string :summary
      t.string :detail

      t.timestamps
    end
  end
end
