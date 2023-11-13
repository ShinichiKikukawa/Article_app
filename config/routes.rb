# config/routes.rb

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    authenticated :user do
      root to: 'users#index', as: :authenticated_root
    end
    unauthenticated :user do
      root to: 'users/sessions#new'
    end
  end

  get 'users', to: 'users#index'
  get 'users/dash_boards', to: 'users#index', as: :users_dash_boards

    namespace :users do
      resources :articles
    end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
