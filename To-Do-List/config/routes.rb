Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   resources :tasks
  root 'tasks#index' # Define a rota raiz para a listagem de tarefas
  
 
end
