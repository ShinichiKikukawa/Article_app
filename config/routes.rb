# config/routes.rb

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Deviseスコープブロックを使用
  devise_scope :user do
    authenticated :user do
      root to: 'users#index', as: :authenticated_root
    end

    unauthenticated :user do
      root to: 'users/sessions#new'
    end
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
