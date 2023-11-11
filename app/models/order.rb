class Order < ApplicationRecord 
    has_many :order_items

    def create_item_from(cart_item)
        data = cart_item.attributes
                    .merge(candy_price: cart_item.candy.price, name: cart_item.candy.name, description: cart_item.candy.description)
        OrderItem.new(**data)
    end

    def total
        order_items.map(&:price).sum
    end
end