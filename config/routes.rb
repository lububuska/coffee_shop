Rails.application.routes.draw do
  resources :products
  resources :customers
  resources :orders

  root "products#index"
end
