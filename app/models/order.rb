class Order < ApplicationRecord 
    has_many :order_items

    scope :for, -> (user) { where(user_id: user.id) }

    def create_item_from(cart_item)
        data = cart_item.attributes.symbolize_keys
                    .merge(candy_price: cart_item.candy.price, name: cart_item.candy.name, description: cart_item.candy.description)
                    .except(:user_id, :anonymous_id)
        OrderItem.new(**data)
    end

    def total
        order_items.map(&:price).sum
    end
end