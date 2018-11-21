Rails.application.routes.draw do
  get 'products/show'
  devise_for :customers
  # get 'categories/index'
  # get 'categories/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Customer
  resources :customers
  resources :products

  # Category
  get 'category/:id', to: 'categories#show', as: 'category'

  # Static pages
  root to: 'pages#index'
end
