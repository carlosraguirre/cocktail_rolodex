Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/cocktails" => "cocktails#index"
  get "/cocktails/:id" => "cocktails#show"
  post "/cocktails" => "cocktails#create"
  patch "/cocktails/:id" => "cocktails#update"
  delete "/cocktails/:id" => "cocktails#destroy"


end
