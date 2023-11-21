class CreateReviewsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :candy 
      t.integer :rating
      t.text :rating_text
      t.timestamps
    end
  end
end
