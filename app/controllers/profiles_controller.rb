  class ProfilesController < ApplicationController
  
  


  def index

  end

  def show
  	@profile = current_user.profile
  end
  
  def new
    @profile = current_user.build_profile
   
  end


  def create
  	 @profile = current_user.build_profile(profile_params)
  	 @profile.user_id = current_user.id
    if @profile.update(profile_params)
  
      redirect_to profile_path(current_user.profile)

    else
      render 'new'
    end
    
   end

   private 

   def profile_params
      params.require(:profile).permit(:name,:age,{polaroids:[]}, {pictures: []})
    end
  
  

end
