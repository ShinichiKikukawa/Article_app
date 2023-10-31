# app/config/routes.rb

Rails.application.routes.draw do
devise_scope :user do
  root to: "devise/sessions#new"
end

  get 'articles/index'
  get '/dashboard', to: 'dashboards#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :articles

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
