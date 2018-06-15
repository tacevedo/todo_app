Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'

  get 'todos/:id/edit', to: 'todos#edit', as: 'edit'
  patch 'todos/:id', to: 'todos#update', as: 'todo'
  delete 'todos/:id', to: 'todos#destroy'

  get 'todos/list', to: 'todos#list'
  get 'todos/:id', to: 'todos#show'
  get 'todos/:id', to: 'todos#complete'

  # resources :todos
end
