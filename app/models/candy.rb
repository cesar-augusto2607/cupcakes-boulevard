class Candy < ApplicationRecord 
    has_many :reviews
    
    def rating
        return 0 if reviews.length == 0
        @rating_value = reviews.sum(&:rating) / reviews.length
    end
end