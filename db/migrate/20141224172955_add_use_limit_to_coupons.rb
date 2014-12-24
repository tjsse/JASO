class AddUseLimitToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :use_limit, :integer
  end
end
