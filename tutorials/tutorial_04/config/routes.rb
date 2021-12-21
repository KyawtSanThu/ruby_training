Rails.application.routes.draw do
  get '/login', to: 'posts#index'
  post "/login/success", to: "posts#login"
  delete "/logout", to: "posts#destory"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
