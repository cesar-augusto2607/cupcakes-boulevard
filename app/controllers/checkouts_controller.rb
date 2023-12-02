class CheckoutsController < ApplicationController
    before_action :require_login, :use_cart
    
    def whatsapp
        @order = Order.find_by id: params[:order_id]
    end
end