class HomeController < ApplicationController
    def index
        items = CartItem.all.includes(:candy)
        @cart = Cart.new(items)
        @candies = Candy.all
    end
end
