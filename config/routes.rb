Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CREATE
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  # READ
  # all
  get "tasks", to: "tasks#index", as: :index
  # one
  get "tasks/:id", to: "tasks#show", as: :show

  # UPDATE
  get "tasks/:id/edit", to: "tasks#edit", as: :task
  patch "tasks/:id/edit", to: "tasks#update", as: :update

  # DELETE
  delete "tasks/:id", to: "tasks#destroy"

end
