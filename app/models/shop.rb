class Shop < ActiveRecord::Base
  has_many :coupons
  has_many :activities
  has_one :user

  has_attached_file :feature_image, :styles => { :middle => "640x240" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :feature_image, :content_type => /\Aimage\/.*\Z/

  def self.search(keyword)
    Shop.where("name LIKE ?", "%#{keyword}%")
  end
end
