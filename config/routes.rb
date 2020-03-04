Rails.application.routes.draw do
  resources :plants
  resources :rooms
  resources :locations
  resources :users
  resources :plantsroom, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
