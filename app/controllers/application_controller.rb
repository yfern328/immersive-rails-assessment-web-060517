class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

  def current_user
    @user = User.find(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def handle_inquisitive
    redirect_to login_path if !logged_in?
  end

end
