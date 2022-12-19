class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @p_num = params[:passenger_count].to_i
    @p_num.times { @booking.passengers.build }
  end
end
