class AddShopToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :shop, index: true
  end
end
