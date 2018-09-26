Rails.application.routes.draw do
  get '/', to: 'prospects#home', as: 'home'
  get '/register', to: 'prospects#home'
  get '/register/new', to: 'prospects#new', as: 'new_registration'
  post '/register', to: 'prospects#create', as: 'register_prospect'
end
