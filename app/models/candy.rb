class Candy < ApplicationRecord 
    has_many :reviews
    
    def rating
        return 0 if reviews.length
        @rating_value = reviews.sum / reviews.length
    end
end