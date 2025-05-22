Rails.application.routes.draw do
  resources :quest_tasks
  resources :quest_cards
  resources :quest_boards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  scope :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :users
    end
  end
end
