Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
#root 'application#hello'
root 'publications#home'
#get 'publications/:id/edit', to: 'publications#edit' no es neceario al tener rsouses
resources :publications
resources :comments do
  resources :answers
end
get "publications", to:"publications#index"
get "new", to:"publications#new"
get "home", to:"publications#home"
get "discussion", to:"comments#new"
end
