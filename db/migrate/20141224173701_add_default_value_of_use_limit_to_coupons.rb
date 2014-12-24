class AddDefaultValueOfUseLimitToCoupons < ActiveRecord::Migration
  def up
    change_column :coupons, :use_limit, :integer, :default => 0
  end

  def down
    change_column :coupons, :use_limit, :integer
  end
end
