class PassengerMailer < ApplicationMailer
  def booking_confirmation
    @booking = params[:booking]

    @booking.passengers.each do |passenger|
      mail(to: passenger.email, subject: 'Your flight is booked!')
    end
  end
end
