Rails.application.routes.draw do
  get 'product_orders/create'
  get 'product_orders/update'
  get 'product_orders/destroy'
  root "products#index"
  get "signup"  => "users#new"
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  get "users/show"
  get "about"   => "static_pages#about"
  get "contact" => "static_pages#contact"
  post "signup" => "users#create"
  resources :users
  resources :products
  resources :orders
  resources :product_orders, except: [:new, :edit, :show]
  resource :cart, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
