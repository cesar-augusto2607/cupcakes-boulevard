class CartsController < ApplicationController
    def index
        @cart = cart
    end
    
    def add
        candy = Candy.find_by id: params_for_add[:candy_id]
        return head :not_found if candy.nil?
        cart.add **params_for_add
        flash[:item_added] = true
        redirect_to request.referrer
    end

    def remove
        candy = Candy.find_by id: params_for_remove[:candy_id]
        return head :not_found if candy.nil?
        cart.remove **params_for_remove
        flash[:item_removed] = true
        redirect_to request.referrer
    end

    private

    def params_for_add
        {
            quantity: params['quantity'] ? params['quantity'].to_i : 1,
            candy_id: params['candy_id'].to_i
        }
    end

    def params_for_remove
        { candy_id: params['candy_id'].to_i }
    end
end