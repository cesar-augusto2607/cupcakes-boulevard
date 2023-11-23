class Review < ApplicationRecord 
    belongs_to :user

    scope :with_text, ->{ where.not(rating_text: nil).or(where.not(rating_text: '')) }

    def edited?
        created_at != updated_at
    end
end