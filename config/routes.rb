Rails.application.routes.draw do

  get 'projects/new'

  get 'users/new'

  resources :users
  resources :projects

  root 'welcome#index'
end
