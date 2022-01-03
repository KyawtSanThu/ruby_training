class PasswordResetsController < ApplicationController
  def login
    @user = User.all
  end

  def new
  end

  def create
    @user = params[:email]

    if @user.present?
      #UserMailer.with(user: @user).reset.deliver_later
      UserMailer.reset(@user).deliver_later
    end

    redirect_to password_reset_path, notice: "If you have an account with this email, we have sent a link to reset your password"
  end
end
