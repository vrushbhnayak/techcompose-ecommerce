Rails.application.routes.draw do
  devise_for :userdevises
  # delete "/userdevise/sign_out", to: "devise/sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  resources :users, only: [:new, :create]
  get "users/login", to: "users#login"
  post "users/login", to: "users#authenticate"
  delete "sign_out", to: "sessions#destroy"
  resources :products

  resources :alluserlists
  resources :product_carts
end
