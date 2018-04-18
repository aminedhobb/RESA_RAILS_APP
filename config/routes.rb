Rails.application.routes.draw do
  resources :hotels do
    resources :bookings, only: [:index, :new, :create, :destroy]
    resources :rooms
    resources :reviews
  end

  devise_for :users
  root to: 'hotels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
