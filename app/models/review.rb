class Review < ApplicationRecord 
    belongs_to :user

    scope :with_text, ->{ where.not(rating_text: nil) }
end