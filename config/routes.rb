Rails.application.routes.draw do

  root to: "pages#home"
  devise_for :users
  resources :services do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :update, :cancel]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
