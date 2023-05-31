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
    ["PHL", "Philadelphia"],
]

airport_code_city_values.each do |code, city|
  Airport.create(airport_code: code, city_name: city)
end
