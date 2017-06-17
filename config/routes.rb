Rails.application.routes.draw do
  root 'sessions#new'

  get 'sessions/new'
  get 'main/index'

  get 'dashboard', to: 'users#index'

  resources :roles
  resources :tasks
  resources :quests
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
