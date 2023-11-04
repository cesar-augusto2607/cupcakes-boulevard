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