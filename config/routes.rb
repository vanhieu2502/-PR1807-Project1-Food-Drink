Rails.application.routes.draw do
  get "signup"  => "users#new"
  get "users/show"
  get "about"   => "static_pages#about"
  get "contact" => "static_pages#contact"
  post "signup" => "users#create"
  root "products#index"
  resources :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
