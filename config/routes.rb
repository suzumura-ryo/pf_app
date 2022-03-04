Rails.application.routes.draw do
  get 'create/destroy'
  #asルートの書き方
  #get  'sato', to: 'static_pages#about', as: 'static_pages_about'
  root  'static_pages#home'             
  get   'signup', to: 'users#new',       as: 'signup'
  get   'index' , to: 'users#index',     as: 'index'
  get   'show',   to: 'users#show' ,     as: 'show'
  get   'deit',   to: 'users#edit',      as: 'edit'
  get   'login',  to: 'sessions#new',    as: 'new_login'
  post  'login',  to: 'sessions#create', as: 'create_login'
  delete'logout', to: 'sessions#destroy',as: 'logout'
  resources :users
  resources :recipes
  resources :procedures
  
end
