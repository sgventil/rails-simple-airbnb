Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # get 'flats', to: 'flats#index'
  # get 'flats/new', to: 'flats#new', as: 'new_flat'
  # post 'flats', to: 'flats#create'
  # get 'flats/:id', to: 'flats#show', as: 'flat'
  # get 'flats/:id/edit', to: 'flats#edit', as: 'edit_flat'
  # post 'flats/:id', to: 'flats#update'
  # delete 'flats/:id', to: 'flats#destroy', as: 'destroy_flat'

  resources :flats
end
