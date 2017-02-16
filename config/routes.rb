Rails.application.routes.draw do

  root to: 'visitors#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users, only: [:index, :show]

  resources :posts do
    resources :comments, except: [:index, :show, :new], shallow: true
 end

  resources :courses do #, only: [:index, :show ] do
    resources :lectures #, shallow: true #, only: [:index, :show]
    resources :projects
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