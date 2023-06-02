class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def new
    @profile = Profile.find(params[:id])
    @booking = Booking.new
  end

  def user_bookings
    @user_bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(bookings_params)
    @profile = Profile.find(params[:profile_id])
    @booking.user_id = current_user.id
    @booking.profile_id = @profile.id
    # @booking.avaialable = true    #<implement if profile actually available
    if @booking.save
      redirect_to user_bookings_path
    else
      render 'profiles/show', status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @profile_id = @booking.profile_id
    @profile = Profile.find(@profile_id)

    # @profile = Profile.where(id: @booking.profile_id)
    # @profile = @profile.first
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    redirect_to user_bookings_path, status: :see_other
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path, status: :see_other
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :avaialable)
  end
end
