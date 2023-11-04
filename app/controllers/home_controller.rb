class HomeController < ApplicationController
    def index
        @cart = Cart.current
        @candies = Candy.all
    end
end
