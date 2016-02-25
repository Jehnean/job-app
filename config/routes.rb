Rails.application.routes.draw do

  root to: "users#index"
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  
  get "/users/:id", to: "users#show", as: 'user'
  get "/sign_in", to: "sessions#new"

  # post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#delete", as: "sessions_delete"
  get "sessions/new"
  resources :sessions


  # get "/jobs", to: "jobs#index"
  # post "/jobs", to: "jobs#create"
  resources :jobs

  # get "/users/:user_id/jobs", to: "users#index", as: "user_libraries"


end
