Rails.application.routes.draw do
  resources :hotels do
    resources :rooms, only: [:new, :create]
    resources :bookings, only: [:new, :create, :show]
    resources :reviews, only: [:index, :new, :create]
  end
  resources :rooms, only: [:edit, :update, :destroy]
  resources :bookings, only: [:index, :edit, :update, :destroy]
  resources :reviews, only: [:edit, :update, :destroy]

  resources :hotel_attachments, only: [:edit, :update, :destroy]
  resources :room_attachments, only: [:edit, :update, :destroy]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
