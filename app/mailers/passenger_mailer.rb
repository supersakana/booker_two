class PassengerMailer < ApplicationMailer
  def booking_confirmation
    @booking = params[:booking]

    # commented out below for production env, uncomment for developer/testing env.

    # @booking.passengers.each do |passenger|
    #   mail(to: passenger.email, subject: 'Your flight is booked!')
    # end
  end
end
