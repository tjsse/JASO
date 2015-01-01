class AddShopToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :shop, index: true
  end
end
