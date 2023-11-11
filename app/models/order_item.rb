class OrderItem < ApplicationRecord 
    belongs_to :order
    belongs_to :candy

    def price
        quantity * candy_price
    end
end