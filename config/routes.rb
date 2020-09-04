Rails.application.routes.draw do
  get 'home/index'
  resources :products
  
  root 'home#index'
end
