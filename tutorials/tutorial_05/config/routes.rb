Rails.application.routes.draw do
  get "/file", to: "tutorial5#file"
  post "/file/read", to: "tutorial5#read_data"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
