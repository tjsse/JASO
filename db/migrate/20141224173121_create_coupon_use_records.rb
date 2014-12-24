class CreateCouponUseRecords < ActiveRecord::Migration
  def change
    create_table :coupon_use_records do |t|
      t.string :phone_number
      t.string :confirmed

      t.timestamps
    end
  end
end
