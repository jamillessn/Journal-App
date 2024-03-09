Rails.application.routes.draw do
  devise_for :users

  root 'tasks#all_tasks'

  get '/tasks', to: 'tasks#all_tasks'

  resources :categories do
    resources :tasks
    end
  end

  # get '/articles' => 'articles#index', as: :articles
  # get '/articles' => 'articles#index', as: :articles # articles_path()

  # get '/articles/new' => 'articles#new', as: :new_article #new_article_path
  # get '/articles/:id' => 'articles#show', as: :article
  # patch '/articles/:id' => 'articles#update'
  # delete '/articles/:id' => 'articles#destroy'

  # get '/articles/:id/edit' => 'articles#edit', as: :edit_article #edit_article_path
  
  # get '/categories/:category_id/tasks' => 'tasks#create', as: :new_task
  # new_category_task GET    /categories/:category_id/tasks/new(.:format)   tasks#new

  # Prefix           Verb   URI Pattern                                    Controller#Action
  # -------------------------------------------------------------------------------
  # category_tasks   GET    /categories/:category_id/tasks(.:format)       tasks#index
  #                  POST   /categories/:category_id/tasks(.:format)       tasks#create
  # new_category_task GET    /categories/:category_id/tasks/new(.:format)   tasks#new
  # edit_category_task GET   /categories/:category_id/tasks/:id/edit(.:format) tasks#edit
  # category_task    GET    /categories/:category_id/tasks/:id(.:format)   tasks#show
  #                  PATCH  /categories/:category_id/tasks/:id(.:format)   tasks#update
  #                  PUT    /categories/:category_id/tasks/:id(.:format)   tasks#update
  #                  DELETE /categories/:category_id/tasks/:id(.:format)   tasks#destroy
  # categories       GET    /categories(.:format)                          categories#index
  #                  POST   /categories(.:format)                          categories#create
  # new_category     GET    /categories/new(.:format)                      categories#new
  # edit_category    GET    /categories/:id/edit(.:format)                 categories#edit
  # category         GET    /categories/:id(.:format)                      categories#show
  #                  PATCH  /categories/:id(.:format)                      categories#update
  #                  PUT    /categories/:id(.:format)                      categories#update
  #                  DELETE /categories/:id(.:format)                      categories#destroy
  