class OrdersController < ApplicationController
    def create
        ActiveRecord::Base.transaction do 
            cart = Cart.current
            order = Order.create
            order_items = cart.items.map { |cart_item| order.create_item_from cart_item }
            order.order_items << order_items
            cart.clear
        end
        redirect_to '/pedidos'
    end

    def index 
        @orders = Order.all
    end
end