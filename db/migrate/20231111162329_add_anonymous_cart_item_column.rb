class AddAnonymousCartItemColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :cart_items, :anonymous_id, :string
  end
end
