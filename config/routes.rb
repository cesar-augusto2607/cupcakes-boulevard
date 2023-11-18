Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'home#index'
  get '/carrinho', to: 'carts#index'
  get '/pedidos', to: 'orders#index'
  get '/entrar', to: 'auth#login_form'
  get '/criar_conta', to: 'auth#signup_form'
  get '/produtos/:slug', to: 'products#show'

  post '/carts/add', to: 'carts#add'
  post '/carts/remove', to: 'carts#remove'
  post '/orders', to: 'orders#create'
  post '/login', to: 'auth#login'
  post '/logout', to: 'auth#logout'
  post '/signup', to: 'auth#signup'
end
