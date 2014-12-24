class AddCouponToCouponUseRecords < ActiveRecord::Migration
  def change
    add_reference :coupon_use_records, :coupon, index: true
  end
end
