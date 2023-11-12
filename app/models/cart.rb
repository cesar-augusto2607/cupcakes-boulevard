class Cart 
    attr_reader :items, :user, :anonymous_id
    
    def initialize(items, user, anonymous_id)
        @items = items || []
        if user.nil?
            @anonymous_id = anonymous_id
        else
            @user = user
        end
    end

    def self.for_session(session)
        user = User.find_by id: session[:user_id] unless session[:user_id].nil?
        return user.nil? ? Cart.for_anonymous(session) : Cart.for_user(user)
    end

    def self.for_user(user)
        items = CartItem.for_user(user)
        Cart.new(items, user, nil)
    end

    def self.for_anonymous(session)
        anonymous_id = session[:anonymous_id] || SecureRandom.uuid
        session[:anonymous_id] = anonymous_id if session[:anonymous_id].nil?
        items = CartItem.where(anonymous_id: anonymous_id, user_id: nil).includes(:candy)
        Cart.new(items, nil, anonymous_id)
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

    def is_anonymous?
        @user.nil? && !@anonymous_id.nil?
    end

    def remove(candy_id:)
        item = CartItem.find_for_cart(self, candy_id: candy_id)
        return if item.nil?
        if (item.quantity <= 1)
            item.destroy
        else
            item.quantity -= 1
            item.save
        end
    end

    def add(candy_id:, quantity:)
        item = CartItem.find_for_cart(self, candy_id: candy_id)
        if (item.nil?) 
            data = {candy_id: candy_id, quantity: quantity, 
                anonymous_id: @anonymous_id, user_id: @user&.id}
            CartItem.create(**data)
        else
            item.quantity += quantity
            item.save
        end
    end

    def move_to(user)
        @items.transaction do 
            @items.each do |item|
                item.update(anonymous_id: nil, user_id: user.id)
            end
        end
    end
end