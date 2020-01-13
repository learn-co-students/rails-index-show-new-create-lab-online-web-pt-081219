class Coupon < ApplicationRecord
    validates :coupon_code, :store, presence: true
end
