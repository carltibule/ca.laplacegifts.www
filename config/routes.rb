Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/show'
  devise_for :customers
  # get 'categories/index'
  # get 'categories/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Customer
  resources :customers
  resources :products, only: [:index, :show]
  resource :cart, only: [:show]
  resource :order_items, only: [:create, :update, :destroy]

  # Category
  get 'category/:id', to: 'carts#show', as: 'category'

  # Static pages
  root to: 'pages#index'

  # Others
  match '/pages/add_to_cart' => 'pages#add_to_cart', :as => :add_to_cart, via: [:post]
end
