class Item < ActiveRecord::Base
  has_attached_file :feature_img, :styles => { :middle => "640x240" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :feature_img, :content_type => /\Aimage\/.*\Z/

  belongs_to :shop

  def self.search(keyword)
    Item.where("title LIKE ?", "%#{keyword}%")
  end
end
