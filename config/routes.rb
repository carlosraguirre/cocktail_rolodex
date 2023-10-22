Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/cocktails" => "cocktails#index"
  get "/cocktails/:id" => "cocktails#show"
  post "/cocktails" => "cocktails#create"
  patch "/cocktails/:id" => "cocktails#update"
  delete "/cocktails/:id" => "cocktails#destroy"

  post "/users" => "users#create"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"

  post "/sessions" => "sessions#create"

end
