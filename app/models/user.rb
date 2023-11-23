class User < ApplicationRecord
    has_secure_password
    
    has_many :reviews

    def cart
        items = CartItem.for_user(self)
        Cart.new(items, self, nil)
    end

    def review_of(candy)
        id = (candy.is_a? Numeric) ? candy : candy.id
        reviews.where(candy_id: id, user_id: self.id).first
    end
end