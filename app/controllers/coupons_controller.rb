class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def show
    @coupon = Coupon.find_by(@coupon)
  end

  def create
    @coupon = Coupon.create(:coupon_code => params[:coupon][:coupon_code], :store => params[:coupon][:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
    #params: { :coupon => { :coupon_code => "ASD123", :store => "Dean and Deluca" } }
  end



end
