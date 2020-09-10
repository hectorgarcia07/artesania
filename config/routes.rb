Rails.application.routes.draw do
  get 'home/admin'
  resources :products
  
  root 'home#index'
end
