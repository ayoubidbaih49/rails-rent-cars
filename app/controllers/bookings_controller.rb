class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.accepted = true
    @booking.car_id = params[:car_id].to_i

    if @booking.save
      redirect_to cars_path, notice: 'booking was successfully created.'
    else
      flash.now[:alert] = 'Error creating booking. Please check the form.'
      redirect_to cars_path, notice: 'booking was not successfully created.'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :car_id)
  end
end
