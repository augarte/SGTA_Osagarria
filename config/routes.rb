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


  get 'login', to: 'welcome#login'
  get 'signin', to: 'welcome#signin'


  post 'kontua', to: 'user#kontua'
  get 'kontua', to: 'user#kontua'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
