Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :carts
  resources :line_items
  root to: "products#index"
end
