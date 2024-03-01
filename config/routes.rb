Rails.application.routes.draw do
  devise_for :users

  root 'tasks#index'

  resources :tasks
  resources :category
  

  # task_index /task --> task#index
  # new_task /task/new --> task#create
  # new_task /task/id --> task#edit

end
