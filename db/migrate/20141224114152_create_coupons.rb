class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :title
      t.string :subtitle
      t.references :shop, index: true
      t.text :detail

      t.timestamps
    end
  end
end
