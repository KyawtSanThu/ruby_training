Rails.application.routes.draw do
  get "/generate", to: "code#index"
  post "/generate/read", to: "code#save"
  post "/generate/qrcode", to: "code#download"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
