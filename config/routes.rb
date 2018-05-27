Rails.application.routes.draw do

  resources :transactions, only: [:index, :new, :create, :show]
  #get 'operazioa/transakzioa'
  #get 'transakzioa/operazioa', to: 'operazioa#transakzioa'
  #get 'transakzioa', action: :show, controller: 'transactions'
  #post 'transakzioa'
  #get 'transakzioa/show/:id', to: 'operazioa#show'
  #get 'transakzioa', to: 'operazioa#index'
  get 'welcome/index'
  root 'welcome#index'

  get 'login', to: 'user_sessions#login'

  get 'signin', to: 'welcome#signin'

  get 'kontua', to: 'user#kontua'
  post 'user_sessions', to: 'user#kontua'
  resources :user_sessions
  post 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy'
end
