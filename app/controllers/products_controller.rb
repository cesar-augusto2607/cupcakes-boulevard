class ProductsController < ApplicationController
    before_action :use_cart
    
    def show
        @candy = Candy.find_by slug: params[:slug]
    end
end