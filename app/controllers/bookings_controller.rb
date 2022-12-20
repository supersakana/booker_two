class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show]

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @p_num = params[:passenger_count].to_i
    @p_num.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      PassengerMailer.with(booking: @booking).booking_confirmation.deliver_now
      
      flash[:notice] = 'Booking successfully completed!'
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email])
  end
end
