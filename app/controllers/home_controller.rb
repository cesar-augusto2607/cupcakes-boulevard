class HomeController < ApplicationController
    before_action :use_cart
    
    def index
        @candies = Candy.includes(:reviews).all
    end
end
