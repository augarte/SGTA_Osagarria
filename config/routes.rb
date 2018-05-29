Rails.application.routes.draw do
 
  root 'welcome#index'
  get 'welcome/index'

  get 'transactions', to: 'transactions#index'
  post 'transactions', to: 'transactions#create'

  get 'kontua', to: 'user#kontua'
  post 'kontua', to: 'user#kontua'
  post 'kontuBerria', to: 'user#create'

  get 'login', to: 'user_session#index'
  post 'login', to: 'user_session#create'
  post 'user_session', to: 'user_session#create'
  delete 'logout', to: 'user_session#destroy'

  get 'signup', to: 'new_user#index'
  get 'signup', to: 'new_user#create'
end
