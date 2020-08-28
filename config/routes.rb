Rails.application.routes.draw do
  
  root "pages#home"
  get 'pages/home', to: 'pages#home'


#resources :recipes show all the routes to recipe
resources :recipes



=begin
  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
  get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  post '/recipe', to: 'recipe#create'
=end
  
  
end
