class UsersController < ApplicationController
  
  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = current_user
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to meet_ups_path, notice => "Your account have been deleted"
  end
end
