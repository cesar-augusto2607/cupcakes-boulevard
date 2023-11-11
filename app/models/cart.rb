class Cart 
    attr_reader :items
    
    def initialize(items) 
        @items = items
    end

    def self.current
        items = CartItem.all.includes(:candy)
        Cart.new(items)
    end

    def size
        @items.length
    end 

    def price
        @items.map(&:price).sum
    end

    def clear
        CartItem.delete_all
    end

    def remove(candy_id:)
        item = CartItem.find_by candy_id: candy_id
        return if item.nil?
        if (item.quantity <= 1)
            item.destroy
        else
            item.quantity -= 1
            item.save
        end
    end

    def add(candy_id:, quantity:)
        item = CartItem.find_by candy_id: candy_id
        if (item.nil?) 
            CartItem.create(candy_id: candy_id, quantity: quantity)
        else
            item.quantity += 1
            item.save
        end
    end
end