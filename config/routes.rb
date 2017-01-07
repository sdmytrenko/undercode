Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :courses, only: [:index, :show ]
end
