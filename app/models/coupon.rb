require 'net/http'

class Coupon < ActiveRecord::Base
  belongs_to :shop
  has_many :coupon_use_records

  has_attached_file :feature_image, :styles => { :middle => "640x240" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :feature_image, :content_type => /\Aimage\/.*\Z/

  def self.search(keyword)
    Coupon.where("title LIKE ?", "%#{keyword}%")
  end

  def consume(phone_number)
    count_of_usage = coupon_use_records.where(:phone_number => phone_number).count
    return false if use_limit and count_of_usage > use_limit
    send_sms(phone_number)
  end

  def send_sms(phone_number)
    uri = URI('https://leancloud.cn')
    req_header = {}
    req_header['X-AVOSCloud-Application-Id'] = 'fu6avi97rq0tcegkgkxkliy28vgn2p12xcgpzlgza6yu3gw1'
    req_header['X-AVOSCloud-Application-Key']= 'ufuy8gmp8879dq9u5la84parquh5p90u1vb7z4dsj6gn3ely'
    req_header['Content-Type']               = 'application/json'

    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      res = http.post('/1.1/requestSmsCode', "{\"mobilePhoneNumber\":\"#{phone_number}\"}", req_header)
      
      coupon_use_record = CouponUseRecord.new
      coupon_use_record.phone_number = phone_number
      coupon_use_records << coupon_use_record
      true
    end
  end

  def self.confirm_code(phone_number, code)
    uri = URI('https://leancloud.cn')
    req_header = {}
    req_header['X-AVOSCloud-Application-Id'] = 'fu6avi97rq0tcegkgkxkliy28vgn2p12xcgpzlgza6yu3gw1'
    req_header['X-AVOSCloud-Application-Key']= 'ufuy8gmp8879dq9u5la84parquh5p90u1vb7z4dsj6gn3ely'
    req_header['Content-Type']               = 'application/json'

    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      res = http.post('/1.1/verifySmsCode/#{code}', "{\"mobilePhoneNumber\":\"#{phone_number}\"}", req_header)
      print res
      true
    end
  end
end
