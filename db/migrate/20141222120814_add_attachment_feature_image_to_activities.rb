class AddAttachmentFeatureImageToActivities < ActiveRecord::Migration
  def self.up
    change_table :activities do |t|
      t.attachment :feature_image
    end
  end

  def self.down
    remove_attachment :activities, :feature_image
  end
end
