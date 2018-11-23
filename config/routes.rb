Rails.application.routes.draw do
  resources :concerts, only: [:index, :show]
  resources :attendess, only: [:index]
  resources :seats, only: [:index, :update]
end
