# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airport_code_city_values = [
    ["ATL", "Atlanta"],
    ["CHI", "Chicago"],
    ["NYC", "New York"],
    ["DAL", "Dallas"],
    ["DEN", "Denver"],
    ["MIA", "Miami"],
    ["LAS", "Las Vegas"],
    ["LAX", "Los Angeles"],
    ["BOS", "Boston"],
    ["ORL", "Orlando"],
    ["SFO", "San Francisco"],
    ["PHX", "Pheonix"],
    ["HUS", "Huston"],
    ["SAN", "San Diego"],
    ["IND", "Indianapolis"],
    ["SAT", "San Antonio"],
    ["DEN", "Denver"],
    ["DET", "Detroit"],
    ["PHL", "Philadelphia"]
]

airport_code_city_values.each do |code, city|
  Airport.create(airport_code: code, city_name: city)
end

airport_code_city_values.each do |departure_code, city|
  departure_id = Airport.where(airport_code: departure_code).ids.first
  airport_code_city_values.each do |arrival_code, city|
    next if departure_code == arrival_code
    now = Time.now
    arrival_id = Airport.where(airport_code: arrival_code).ids.first
    flight_duration = ['1:00', '1:15', '1:30', '1:45', '2:00', '2:30', '2:15', '3:00'].sample
    20.times do |i|
      now += (40..1440).to_a.sample.minutes
      Flight.create( departure_airport_id: departure_id, arrival_airport_id: arrival_id, datetime: now, flight_duration: flight_duration)
    end
  end
end




