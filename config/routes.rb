Rails.application.routes.draw do
  root to: 'static_pages#home'
  get    'root_path' , to: 'static_pages#home'
  get    'signup', to: 'users#new'
  get    'edit'  , to: 'sessions#User.find(params[:id])#edit'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts #ここを追加
  resources :relationships, only: [:create, :destroy]
end