Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :trees do
    resources :adoption, only: [:new, :create, :index]
    resources :reviews, only: [ :new, :create ]
  end
end
