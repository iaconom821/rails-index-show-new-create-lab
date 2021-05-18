class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all 
    end

    def create
        @create_coupon = Coupon.create(params.require(:coupon).permit(:coupon_code, :store))

        redirect_to coupon_path(@create_coupon)
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new

    end


end
