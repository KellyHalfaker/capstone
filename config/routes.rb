Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/events" => "events#index"
    post "/events" => "events#create"
    get "/events/:id" => "events#show"
    patch "/events/:id" => "events#update"
    delete "/events/:id" => "events#destroy"

    get "/user-events" => "user_events#current_user_events"
    post "/user-events" => "user_events#create"
    delete "/user-events/:event_id" => "user_events#destroy"

    post "/watson" => "watson#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
