
class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: :update

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bookable = current_user
    @booking.save!
    redirect_to root_path
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def show
  end

  def index
    @bookings = policy_scope(Booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:duration,
                                    :start_time,
                                    :user_id,
                                    :event_id,
                                    :status
                                  )
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
