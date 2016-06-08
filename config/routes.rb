Rails.application.routes.draw do

  get 'users/new'

  resources :users

  root 'welcome#index'
end
