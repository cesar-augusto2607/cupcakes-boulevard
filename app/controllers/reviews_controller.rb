class ReviewsController < ApplicationController

    def create
        return head :forbidden if current_user.nil?
        
        candy = Candy.find_by id: params[:candy_id]
        return head :not_found if candy.nil?
        review = current_user.review_of(candy)
        if (review.nil?)
            flash[:review_feedback] = "Avaliação criada."
            review = Review.create(user_id: current_user.id, candy_id: candy.id, 
                                    rating_text: params[:rating_text], rating: params[:rating])
        else
            flash[:review_feedback] = "Avaliação atualizada."
            review.rating_text = params[:rating_text]
            review.rating = params[:rating]
            review.save!
        end

        return redirect_back fallback_location: '/'
    end
end
