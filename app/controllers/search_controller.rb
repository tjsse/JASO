class SearchController < ApplicationController
  def index
    if params.include?(:keyword)
      @keyword = params[:keyword]
      @coupons = Coupon.search(params[:keyword])
      @shops = Shop.search(params[:keyword])
      @activities = Activity.search(params[:keyword])
    end
  end
end
