class HomeController < ApplicationController
    def index
        @cart = cart
        @candies = Candy.all
    end
end
