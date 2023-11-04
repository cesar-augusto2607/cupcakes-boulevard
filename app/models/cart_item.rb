class CartItem < ApplicationRecord 
    belongs_to :candy
    
    def price
        candy.price * quantity
    end
end