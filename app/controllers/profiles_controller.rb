class ProfilesController < ApplicationController
# set a before action

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    if current_user
      @profile = Profile.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  #set params for profile

  def profile_params
    params.require(:profile).permit(:name, :bio, :day_rate, :rating, :category)
  end
end
