class GuestsController < ApplicationController

  before_action :set_guests, only: [:show, :edit, :update, :create]

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def require_params
    params.require(:guest).permit(:name, :occupation)
  end

  def set_guests
    @guest = Guest.find(params[:id])
  end

end
