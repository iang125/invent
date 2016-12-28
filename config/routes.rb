Rails.application.routes.draw do
  resources :ink_exchanges
  resources :inks
  resources :transactions
  resources :equipment
  devise_for :users
  root to: 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
