class FlightsController < ApplicationController
  def index
    @airports = Airport.all.order(:city_name).map { |airport| [airport.city_name, airport.id] }
    @query = params[:search_query]
    if @query.nil?
      flash.notice = "Search for flights"
    else
      @flights = search_for_flights(@query)
    end
  end

  private

  def search_for_flights(query)
    date = query[:date].to_date
    Flight.where(departure_airport_id: query[:departure_airport]).where(arrival_airport_id: query[:arrival_airport]).where(datetime: date..(date + 1.day)).order(:datetime)
  end
end
