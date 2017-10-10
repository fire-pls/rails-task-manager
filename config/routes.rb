Rails.application.routes.draw do
  #master list of tasks
  get 'tasks', to: 'tasks#index', as: 'tasks'

  #post new task to list
  post 'tasks', to: 'tasks#create'

  #show form to make new task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  #show pre-filled form to change a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  #show specific task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  #change specified task info
  patch 'tasks/:id', to: 'tasks#update'

  #delete specified id
  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete_task'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
