Rails.application.routes.draw do
  get '/pedido_api', to: 'pedido_api#new'
  resources :plato_pedidos
  resources :pedidos
  resources :platos
  resources :people
  resources :productos
  devise_for :users, skip: [:registrations]
    devise_scope :user do
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  get 'home/index'
  root to: 'home#index'
  get '/sucursals', to: 'sucursal#index'
  get '/sucursals/new', to: 'sucursal#new'
  post '/sucursals', to: 'sucursal#create'
  get '/sucursal/:id', to: 'sucursal#show', as: 'sucursal'
  get '/sucursals/:id/edit', to: 'sucursal#edit', as: 'edit_sucursal'
  patch '/sucursal/:id', to: 'sucursal#update'
  put '/sucursal/:id', to: 'sucursal#update'
  delete '/sucursal/:id', to: 'sucursal#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
