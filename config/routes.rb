Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tasks, :except => [:show]
  get '/tasks/done_tasks', :to => 'tasks#done_tasks'
end
