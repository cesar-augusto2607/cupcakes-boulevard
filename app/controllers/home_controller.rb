class HomeController < ApplicationController
    def index
        @candies = Candy.all
    end
end
