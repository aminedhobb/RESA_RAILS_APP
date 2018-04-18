Rails.application.routes.draw do
  resources :hotels do
    resources :rooms, only: [:index, :new, :create]
    resources :bookings, only: [:index, :new, :create, :show]
    resources :reviews, only: [:index, :new, :create]
  end
  resources :rooms, only: [:edit, :update, :destroy]
  resources :bookings, only: [:edit, :update, :destroy]
  resources :reviews, only: [:edit, :update, :destroy]

  devise_for :users
  root to: 'hotels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
