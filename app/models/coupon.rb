class Coupon < ActiveRecord::Base 
    def linked_coupon
        self.coupon_code + " " + self.store
    end
end