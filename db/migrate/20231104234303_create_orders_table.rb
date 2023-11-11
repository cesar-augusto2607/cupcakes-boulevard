class CreateOrdersTable < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.timestamps
    end

    create_table :order_items do |t|
      t.decimal :candy_price, precision: 10, scale: 2
      t.string :name
      t.string :description
      t.integer :quantity
      t.belongs_to :candy
      t.belongs_to :order
      t.timestamps
    end
  end
end
