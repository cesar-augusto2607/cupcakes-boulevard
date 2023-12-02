class Order < ApplicationRecord 
    has_many :order_items
    belongs_to :user

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

    def whatsapp_message
        items = order_items.map {|item| "- _#{item.quantity}x_ #{item.name}: *#{Formatting::brl(item.price)}*\n"} 
        <<~TEXT
            *Pedido Nº #{self.id}*
            Cliente: #{user.name}

            #{items.join('')}

            Total: *#{Formatting::brl(total)}*
        TEXT
    end

    def whatsapp_link
        Formatting::uri_parser.escape("https://wa.me/553598595390?text=#{whatsapp_message}")
    end
end