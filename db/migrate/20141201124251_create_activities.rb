class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :summary
      t.text :detail

      t.timestamps
    end
  end
end
