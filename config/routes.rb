Rails.application.routes.draw do

  root to: "pages#home"
  devise_for :users
  resources :services do
    resources :bookings, only: [:new, :create, :edit, :destroy]
  end

  resources :bookings, only: [:index, :edit, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
