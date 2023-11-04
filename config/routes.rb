Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'home#index'
  post '/carts/add', to: 'carts#add'
  post '/carts/remove', to: 'carts#remove'
  get '/cart', to: 'carts#index'
end
