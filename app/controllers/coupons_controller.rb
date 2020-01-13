class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def create
        # @coupon = Coupon.new(coupon_params)
        # if @coupon.save
        #     redirect_to coupons_path
        # else 
        #     render "new"
        # end
        @coupon = Coupon.new
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        @coupon[:store] = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    def new
        # Unsaved instance of Coupon, for `form_for` form on new.html.erb
        #@coupon = Coupon.new
    end

    def edit
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def update
    end

    def destroy
    end

    private

    def coupon_params
        #strong params
        params.require(:coupon).permit(:coupon_code, :store)
    end

end