class ProductsController < ApplicationController
    before_action :use_cart
    
    def show
        @candy = Candy.find_by slug: params[:slug]
        @reviews = Review.with_text.includes(:user).where(candy_id: @candy.id)
        @user_review = current_user.review_of(@candy)
    end
end