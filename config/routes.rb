Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'home#index'
  get '/carrinho', to: 'carts#index'
  get '/pedidos', to: 'orders#index'

  post '/carts/add', to: 'carts#add'
  post '/carts/remove', to: 'carts#remove'
  post '/orders', to: 'orders#create'
end
