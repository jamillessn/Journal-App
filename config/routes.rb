Rails.application.routes.draw do
  devise_for :users

  root to: 'tasks#index'

  get '/tasks', to: 'tasks#index'

  resources :tasks do
    get 'today', on: :collection
  end

  resources :categories do
    resources :tasks
    end
  end  