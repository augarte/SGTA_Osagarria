Rails.application.routes.draw do
 
  root 'welcome#index'
  get 'welcome/index'

  resources :accounts
  resources :transactions, only: [:index, :new, :create, :show]
  #get 'operazioa/transakzioa'
  #get 'transakzioa/operazioa', to: 'operazioa#transakzioa'
  #get 'transakzioa', action: :show, controller: 'transactions'
  #post 'transakzioa'
  #get 'transakzioa/show/:id', to: 'operazioa#show'
  #get 'transakzioa', to: 'operazioa#index'


  get 'kontua', to: 'user#kontua'
  post 'kontua', to: 'user#kontua'

  resources :user_session
    get 'login', to: 'user_session#index'
    post 'login', to: 'user_session#create'
    post 'logout', to: 'user_session#destroy'

  resources :new_user
    get 'signup', to: 'new_user#index'
    get 'signup', to: 'new_user#create'
end
