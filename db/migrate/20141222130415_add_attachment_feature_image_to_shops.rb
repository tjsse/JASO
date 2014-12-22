class AddAttachmentFeatureImageToShops < ActiveRecord::Migration
  def self.up
    change_table :shops do |t|
      t.attachment :feature_image
    end
  end

  def self.down
    remove_attachment :shops, :feature_image
  end
end
