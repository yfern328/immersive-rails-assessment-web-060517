class AppearancesController < ApplicationController

def new
  @appearance = Appearance.new
end

def index
  @appearances = Appearance.all
  @user = User.find(session[:user_id])
end

def create
  @appearance = Appearance.create(appearance_params)
  if @appearance.save
    redirect_to appearance_path(@appearance)
  else
    render 'new'
  end
end

def show
end

def edit
end

def update
  @appearance.update(appearance_params)
  redirect_to appearance_path(@appearance)
end

def destroy
  @appearance.delete
  redirect_to appearances_path
end

private

def appearance_params
  params.require(:appearance).permit(:guest_id, :episode_id, :rating)
end

def set_appearance
  @appearance = Appearance.find(params[:id])
end

end
