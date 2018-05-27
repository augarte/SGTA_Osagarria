Rails.application.routes.draw do
  get 'operazioa/transakzioa'
  get 'transakzioa', to: 'operazioa#transakzioa'
  get 'welcome/index'
  
  root 'welcome#index'

  get 'login', to: 'user_sessions#login'
  get 'signin', to: 'welcome#signin'
  post 'kontua', to: 'user#kontua'
  get 'kontua', to: 'user#kontua'
  post 'user_sessions', to: 'user#kontua'
  resources :user_sessions
  post 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
