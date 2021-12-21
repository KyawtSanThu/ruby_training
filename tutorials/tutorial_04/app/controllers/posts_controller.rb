class PostsController < ApplicationController
  def index
  end

  def login
    name = 'Jue'
    password = 'jue123'
    if (name == (params[:username]) && password == (params[:password]))
      session[:username] = 'Jue'
      session[:password] = 'jue123'
      render 'success_login'
    else
      render 'index'
    end
  end

  def logout
    session[:username] = nil
    session[:password] = nil
    render 'index'
  end
end