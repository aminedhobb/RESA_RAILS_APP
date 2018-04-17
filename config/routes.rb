Rails.application.routes.draw do
  resources :hotels do
    resources :rooms
    resources :booking
    resources :reviews
  end
  resources :city, only: [:show]
  root "hotels#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
