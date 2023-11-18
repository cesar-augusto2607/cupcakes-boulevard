class ApplicationController < ActionController::Base
    helper_method :is_anonymous?, :is_logged_in?, :cart, :current_user

    class SessionManager 
        def initialize(session)
            @session = session
        end

        def create_for(user)
            @session.delete(:anonymous_id) unless @session[:anonymous_id].nil?
            @session[:user_id] = user.id
        end
    end

    def use_cart
        @cart = cart
    end

    def session_manager
        @session_manager ||= SessionManager.new(session)
    end

    def reload_cart
        @current_cart = nil
    end

    def cart
        @current_cart ||= Cart.for_session(session)
    end

    def is_anonymous?
        cart.is_anonymous?
    end

    def is_logged_in?
        !is_anonymous?
    end

    def current_user
        cart&.user
    end

    def require_login
        return redirect_to '/entrar' if is_anonymous?
    end
end
