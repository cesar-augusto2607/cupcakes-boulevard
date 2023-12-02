class OrdersController < ApplicationController
    before_action :require_login, :use_cart
    
    def create
        order = ActiveRecord::Base.transaction do 
            order = Order.create(user_id: current_user.id)
            order_items = cart.items.map { |cart_item| order.create_item_from cart_item }
            order.order_items << order_items
            cart.clear
            order
        end
        redirect_to "/checkout_whatsapp/#{order.id}"
    end

    def index 
        @orders = Order.for(current_user).order(created_at: :desc).all
    end
end