Rails.application.routes.draw do
  get 'welcome/index'

  resources :assignments

  resources :users, only: [:new, :create] do
    resources :assignments
  end
  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'

  get '/users/new', to: 'users#new', as: 'signup'
  get '/sessions/new', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get '/users/:user_id/assignments/new', to: 'assignments#new', as: 'add-new-assignment'
end
