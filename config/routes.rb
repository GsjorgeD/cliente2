Rails.application.routes.draw do
#root 'application#hello'
root 'publications#index'
#get 'publications/:id/edit', to: 'publications#edit' no es neceario al tener rsouses
resources :publications
get "publications", to:"publications#index"
get "new", to:"publications#new"
end
