#app/config/routes.rb

Rails.application.routes.draw do
  root 'articles#index'
  get 'articles/index'
  devise_for :users
  #resources :articles
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
