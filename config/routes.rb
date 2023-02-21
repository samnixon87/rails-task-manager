Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Defines the root path route ("/")
  get "tasks", to: "tasks#index"

  # Add a new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Edit a task
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  # Delete a task
  delete "tasks/:id", to: "tasks#destroy"

  #List one task
  get "tasks/:id", to: "tasks#show", as: :task

end
