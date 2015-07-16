Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :carts do
    member do
      get :checkout
    end
    collection do
      get :shipping_cost
    end
  end
  resources :line_items
  resources :shipping_addresses
  resources :payment_methods
  resources :orders do
    member do
      get :confirmation
    end
  end
  root to: "products#index"
end
