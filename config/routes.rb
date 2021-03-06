Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'splash#view'
   get 'teams' => 'teams#view'
   get '/about', to: 'static#about', as: 'about'
   get '/myteam', to: 'my_team#view', as: 'view'
   get '/teams/:id', to: 'teams#show', as: 'team'
   #get '/users', to: 'users#show', as: 'show'
   resources :teams
   resources :users
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
end
