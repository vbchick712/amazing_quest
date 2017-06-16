Rails.application.routes.draw do
  get 'sessions/new'

  root 'main#index'
  get 'main/index'

  resources :roles
  resources :tasks
  resources :quests
  resources :users
  resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
