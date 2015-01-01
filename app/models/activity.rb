class Activity < ActiveRecord::Base
  belongs_to :shop

  has_attached_file :feature_image, :styles => { :middle => "640x240" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :feature_image, :content_type => /\Aimage\/.*\Z/

  def self.search(keyword)
    where("title LIKE ?", "%#{keyword}%")
  end
end
