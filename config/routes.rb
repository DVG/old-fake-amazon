Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :carts do
    member do
      get :checkout
    end
  end
  resources :line_items
  root to: "products#index"
end
