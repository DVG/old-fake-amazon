Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :carts do
    member do
      get :checkout
    end
  end
  resources :line_items
  resources :shipping_addresses
  resources :payment_methods
  resources :orders
  root to: "products#index"
end
