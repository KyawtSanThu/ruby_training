Rails.application.routes.draw do      
  get '/date' , to: 'posts#calculate'
  post "/date/display", to: "posts#display_age"
 end  
