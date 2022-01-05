Rails.application.routes.draw do
  get "/password", to: "password_resets#login"
  get "/password/reset", to: "password_resets#new"
  post "/password/reset", to: "password_resets#create"
  get "/password/reset/edit", to: "password_resets#edit"
  patch "/password/reset/edit", to: "password_resets#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
