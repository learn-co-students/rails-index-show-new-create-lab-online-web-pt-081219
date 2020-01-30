class CouponsController < ApplicationController
    def index
      @coupons = Coupon.all
    end
  
    def new
      @coupon = Coupon.new
    end
  
    def create
      @coupon = Coupon.new(coupon_params)
  
      if @coupon.save
        redirect_to coupon_path(@coupon)
      else
        render :new
      end
    end
    
    def show
        @coupon = Coupon.find(params[:id])
    end
  
    private
  
    def coupon_params 
      params.require(:coupon).permit(:coupon_code, :store)
    end
  end
  