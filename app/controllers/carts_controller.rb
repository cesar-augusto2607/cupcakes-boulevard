class CartsController < ApplicationController
    def index
        @cart = Cart.current
    end
    
    def add
        candy = Candy.find_by id: params_for_add[:candy_id]
        return if candy.nil?
        cart = Cart.current
        cart.add **params_for_add
        redirect_to request.referrer
    end

    private

    def params_for_add
        {
            quantity: params['quantity'].to_i,
            candy_id: params['candy_id'].to_i
        }
    end
end