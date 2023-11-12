class CartItem < ApplicationRecord 
    belongs_to :candy
    
    def self.find_for_cart(cart, **args)
        if (cart.is_anonymous?)
            CartItem.find_by(anonymous_id: cart.anonymous_id, **args)
        else
            CartItem.find_by(user_id: cart.user.id, **args)
        end
    end

    def self.for_user(user)
        CartItem.where(user_id: user.id, anonymous_id: nil).includes(:candy)
    end

    def price
        candy.price * quantity
    end
end