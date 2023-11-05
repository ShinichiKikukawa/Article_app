# app/config/routes.rb

Rails.application.routes.draw do
  # deviseのルート設定
  devise_for :users

  # devise_scopeを使ってカスタムルートを設定
  devise_scope :user do
    root to: 'users/sessions#new'
  end

  # ユーザーダッシュボードへのルートを設定（パスを変更）
  get 'users/dash_boards', to: 'users#index', as: :users_dash_boards

  # ユーザーのリソースを設定（ネストされた記事のリソースを含む）
  resources :users do
    resources :articles
  end

  # 開発環境でLetterOpenerWebをマウント
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
