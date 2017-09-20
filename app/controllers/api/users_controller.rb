class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages, status: 422 
    end

  end

  def user_params
    params.require(:user).permit(:username, :name, :email, :password)
  end

end