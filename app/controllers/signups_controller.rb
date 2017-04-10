class SignupsController < ApplicationController
  
  def new  
      @new_signup = Signup.new 
  end
  
  def create
  	@new_signup = Signup.new(post_params)
  	@new_signup.save
    redirect_to thanks_url
  end
  

  private
  def post_params
    params.require(:signup).permit(:email)
  end
  
  def thanks
  end
  
end
