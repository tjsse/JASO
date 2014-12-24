class AddAttachmentFeatureImageToCoupons < ActiveRecord::Migration
  def self.up
    change_table :coupons do |t|
      t.attachment :feature_image
    end
  end

  def self.down
    remove_attachment :coupons, :feature_image
  end
end
