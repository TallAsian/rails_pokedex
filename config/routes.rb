Rails.application.routes.draw do
  get 'pokemon_stats/index'
  get 'pokemon_stats/show'
  get 'type_names/index'
  get 'type_names/show'
  get 'pokemon_ranks/index'
  get 'pokemon_ranks/show'
  get 'pokemon_gens/index'
  get 'pokemon_gens/show'
  get 'pokemon_types/index'
  get 'pokemon_types/show'
  get 'pokemon_infos/index'
  get 'pokemon_infos/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
