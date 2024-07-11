Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #Event
  # index for Event , show details about event
  get "/weddings" => "events#index"
  # show for Event , show details about one event
  get "/weddings/:id" => "events#show"

  #User
  # SignUp => create new user
  post "/users" => "users#create"
  # Login => user logs in and creates 'jwt' token in storage
  post "/sessions" => "sessions#create"

end
