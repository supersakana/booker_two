class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| ["#{a.code}, #{a.location}", a.id] }
    @flights = Flight.all
  end
end
