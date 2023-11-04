class Cart 
    def initialize(items) 
        @items = items
    end

    def size
        @items.length
    end 

    def price
        @items.map(&:price).sum
    end
end