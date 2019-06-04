Rails.application.routes.draw do
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
