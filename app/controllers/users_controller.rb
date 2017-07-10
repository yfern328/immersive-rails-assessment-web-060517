class UsersController < ApplicationController

  before_action :set_user, only: :show

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

    #byebug

    @user = User.create(user_params)

    #if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    #else
      #render 'new'
    #end

  end

  def show
    redirect_to root_path unless logged_in?
    #handle_inquisitive
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
    #redirect_to login_path if !!@user
  end

end
