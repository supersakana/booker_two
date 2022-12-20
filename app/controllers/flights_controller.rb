class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| ["#{a.code}, #{a.location}", a.id] }
    @dates = Flight.all.map(&:date).uniq
    return if search_params.empty?

    @search_results = search_flight
  end

  private

  def search_flight
    if params[:from_id] == params[:to_id]
      flash.now[:alert] = 'departure and arrival flights should be different'
      render 'index'
    else
      Flight.search(search_params)
    end
  end

  def search_params
    params.permit(:from_id, :to_id, :date)
  end
end
