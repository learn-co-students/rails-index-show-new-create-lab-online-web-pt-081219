class CouponsController < ApplicationController
    def index  
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create 
        Coupon.create(store: params[:coupon][:store], coupon_code: params[:coupon][:coupon_code])
        redirect_to coupons_path
    end
end
