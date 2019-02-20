Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :experiences, only: [:index, :show] do
    resources :reservations, only: [:new, :create]
  end


  resources :reservations, only: [:index] do
    resources :reviews, only: [:new, :create]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
