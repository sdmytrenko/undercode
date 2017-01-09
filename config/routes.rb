Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  root to: 'visitors#index'

  devise_for :users
  resources :users, only: [:index, :show]

  resources :courses, only: [:index, :show ] do
    resources :lectures, only: [:index, :show] #, shallow: true
  end

  namespace :admin do
    resources :courses, except: [:index, :show]
  end
end