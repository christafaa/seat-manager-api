Rails.application.routes.draw do
  resources :concerts, only: [:index, :show] do
    resources :attendees, only: [:index]
    resources :seats, only: [:index, :update]
  end
end
