Rails.application.routes.draw do
root 'application#hello'
#get 'publications/:id/edit', to: 'publications#edit' no es neceario al tener rsouses
resources :publications

end
