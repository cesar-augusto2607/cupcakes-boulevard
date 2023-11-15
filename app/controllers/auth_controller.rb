class AuthController < ApplicationController
    def login_form
        @paths_to_ignore_navbar = ['/entrar']
    end

    def login
        user = User.find_by email: params[:email]
        if user.nil?
            flash[:notice] = 'Senha incorreta'
            return redirect_back fallback_location: '/entrar'
        end

        if !user.authenticate(params[:password])
            flash[:notice] = 'Senha incorreta'
            return redirect_back fallback_location: '/entrar'
        end

        if is_anonymous?
            cart.move_to(user)
            session_manager.create_for(user)
            reload_cart
        end

        redirect_to '/'
    end

    def logout
        reset_session
        redirect_to '/'
    end

    def signup
        user_already_exists = User.find_by email: params[:email]
        if !user_already_exists.nil?
            flash[:notice] = 'Conta já existe'
            return redirect_back fallback_location: '/criar_conta'
        end

        user = User.create(**signup_params)
        session_manager.create_for(user)

        redirect_to '/'
    end

    private

    def signup_params
        params.permit(:name, :email, :password)
    end
end
