class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| ["#{a.code}, #{a.location}", a.id] }
    return if search_params.empty?

    @search_results = Flight.search(search_params)
  end

  private

  def search_params
    params.permit(:from_id, :to_id, :date)
  end
end
