class PassengerMailer < ApplicationMailer
  default from: 'notifications@flightbooker.com'

  def booking_email(passenger, flight)
    @passenger = passenger
    @flight = flight
    mail(to: @passenger.email, subject: 'Flight booked successfully!')
  end
end
