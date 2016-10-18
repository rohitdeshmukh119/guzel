class UsersController < ApplicationController
  before_action :authenticate_user!
 
  

  def current_user_home
    redirect_to current_user
  end


  private
  def user_params
    params.require(:user).permit(:role)
  end
  
end