Rails.application.routes.draw do
  root 'welcome#index' 
  get 'inicio' => 'welcome#index'

  resources :users, only: [:index, :create]

  #resources :customers
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
