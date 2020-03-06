Rails.application.routes.draw do
  resources :plants
  resources :rooms
  resources :locations
  resources :users
  resources :plants_rooms, only: [:index, :new, :show, :create, :update]
  resources :locations_rooms, only: [:index, :new, :show, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
