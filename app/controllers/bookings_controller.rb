class BookingsController < ApplicationController
  before_action :set_booking_params, only: %i[show]

  def index
    @booking = Booking.all
  end

  def show
  end

  private

  def set_booking_params
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:booking).permit(:user_id, :profile_id, :start_date, :end_date,:available)
  end
end
