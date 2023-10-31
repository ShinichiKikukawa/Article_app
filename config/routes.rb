# app/config/routes.rb

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  authenticate :user do
    root 'home#index', as: :authenticated_root
    get '/dashboard', to: 'dashboards#index'
    resources :articles
  end

  root to: 'devise/sessions#new'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
