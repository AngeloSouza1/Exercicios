Rails.application.routes.draw do
  root 'calculator#index'
  get '/calculate', to: 'calculator#calculate'
end
