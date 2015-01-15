class AddAttachmentFeatureImgToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :feature_img
    end
  end

  def self.down
    remove_attachment :items, :feature_img
  end
end
