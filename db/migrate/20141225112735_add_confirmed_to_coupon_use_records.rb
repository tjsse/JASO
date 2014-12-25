class AddConfirmedToCouponUseRecords < ActiveRecord::Migration
  def change
    add_column :coupon_use_records, :confirmed, :boolean, :default => false
  end
end
