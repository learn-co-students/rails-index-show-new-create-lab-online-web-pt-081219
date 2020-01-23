class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
      end
    
      def show
        @coupon = Coupon.find(params[:id])
      end
    
      def new
      end
    
      def create
        @coupon = Coupon.new(coupon_params)
        if @coupon.save
          redirect_to coupon_path(@coupon) 
         else
           render :new 
         end
      end
    
      def update
        @coupon = Coupon.find(params[:id])
        if @coupon.update(coupon_params)
          redirect_to coupon_path(@coupon) 
         else
           render :new 
         end
      end
    
      def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
      end
end
