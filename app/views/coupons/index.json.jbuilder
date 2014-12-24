json.array!(@coupons) do |coupon|
  json.extract! coupon, :id, :title, :subtitle, :shop_id, :detail
  json.url coupon_url(coupon, format: :json)
end
