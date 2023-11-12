class OrdersController < ApplicationController
    before_action :require_login
    
    def create
        ActiveRecord::Base.transaction do 
            order = Order.create(user_id: current_user.id)
            order_items = cart.items.map { |cart_item| order.create_item_from cart_item }
            order.order_items << order_items
            cart.clear
        end
        redirect_to '/pedidos'
    end

    def index 
        @orders = Order.for(current_user).all
    end
end