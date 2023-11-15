class AddSlugColumnToCandies < ActiveRecord::Migration[7.0]
  def change
    add_column :candies, :slug, :string
    add_index :candies, :slug, unique: true
  end
end
