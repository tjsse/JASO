class AddTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, :default => 'seller'
  end
end
