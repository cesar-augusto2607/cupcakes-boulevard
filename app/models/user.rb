class User < ApplicationRecord
    has_secure_password

    def cart
        items = CartItem.for_user(self)
        Cart.new(items, self, nil)
    end
end