Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
#root 'application#hello'
root 'publications#index'
#get 'publications/:id/edit', to: 'publications#edit' no es neceario al tener rsouses
resources :publications
resources :comments
get "publications", to:"publications#index"
get "new", to:"publications#new"
end
