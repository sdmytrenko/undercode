Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  root to: 'visitors#index'
  devise_for :users
  resources :users, only: [:index, :show]

  resources :courses, only: [:index, :show ]
end
