class CreateCandiesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :candies do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.timestamps
    end
  end
end
