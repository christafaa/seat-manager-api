Rails.application.routes.draw do
  resources :concerts, only: [:index, :show, :update] do
    resources :attendees, only: [:index]
    resources :seats, only: [:index]
  end
end
