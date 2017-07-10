class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create

    byebug

    @user = User.find_by(username: params[:username])

     if @user && @user.handle_inquisitive(params[:password])
    #if !!@user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
