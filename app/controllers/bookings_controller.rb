class BookingsController < ApplicationController
  before_action :set_booking_params, only: %i[show]

  def index
    @booking = Booking.all
  end

  def show
  end

  #def new
  #  @profile = Profile.find(params[:id])
  #  @booking = Booking.new
  #end

  def create
    @profile = Profile.find(params[:id])
    @booking = Booking.create(bookings_params)
    @booking.avaialable = true    #<implement if profile actually available
    @booking.user_id = current_user.id
    @booking.profile_id = @profile.id
    if @booking.save
      redirect_to user_bookings_path
    else
      render template: 'bookings/new', status: :unprocesable_entity
    end
  end

  private

  def set_booking_params
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
