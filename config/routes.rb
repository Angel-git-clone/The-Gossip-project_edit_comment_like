Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'authors/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

#------------------------ Pour les views/main ------------------------------#
  get '/welcome/:first_name', to: 'main#welcome'

  # get '/', to: 'main#home'
  get '/team', to: 'main#team'
  get '/contact', to: 'main#contact'
  
  get '/gossip/:id', to: 'main#gossip'

#------------------------ Pour les views/gossips ------------------------------#

  get "/", to: "gossips#index"
  # # get "/gossips/:id", to: "gossips#show"
  # get "/gossips/new", to: "gossips#new"
  # post "/gossips", to: "gossips#create"  # reçoit de l'info d'un formulaire donc verbe POST
  # get "/gossips/:id/edit", to: "gossips#edit"
  # put "/gossips/:id", to: "gossips#update" # reçoit de l'info d'un formulaire donc verbe PUT
  # delete "/gossips/:id", to: "gossips#destroy" # une requête un peu spéciale pour supprimer donc verbe DELETE
  
#------------------------ Pour les views/users ------------------------------#
  
# get 'users/new', to: "users#new"
# get 'users/show', to: "users#show"

#------------------------ Pour les "ressources"------------------------------#

  resources :gossips
  resources :users
  resources :cities
  resources :authors
  resources :sessions
  resources :comments
end
