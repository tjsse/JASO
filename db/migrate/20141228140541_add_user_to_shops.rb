class AddUserToShops < ActiveRecord::Migration
  def change
    add_reference :shops, :user, index: true
  end
end
