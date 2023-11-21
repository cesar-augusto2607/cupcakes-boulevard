class CandiesController < ApplicationController

    def add_review
        if params[:user_id]
            review = Review.where(user_id: params[:user_id], candy_id: params[:candy_id])
            User.find_by id: params[:user_id]
        else
        end
    end
end
