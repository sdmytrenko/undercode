Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  root to: 'visitors#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users, only: [:index, :show]

  resources :courses do #, only: [:index, :show ] do
    resources :lectures, only: [:index, :show] #, shallow: true
  end

  namespace :admin do
    # resources :courses, except: [:index, :show]
    resources :users do
      member do
        patch 'toggle_active'
      end
    end
  end
end