Rails.application.routes.draw do
  get 'welcome/index'

  resources :users, only: [:new, :create] do
    resources :assignments
  end
  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
