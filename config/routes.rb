Rails.application.routes.draw do
  get 'main/index'

  resources :roles
  resources :tasks
  resources :quests
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
