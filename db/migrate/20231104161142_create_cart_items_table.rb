class CreateCartItemsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.belongs_to :candy
      t.integer :quantity
      t.timestamps
    end
  end
end
