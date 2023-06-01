class Airport < ApplicationRecord
    has_many :arriving_flights, class_name: 'Flight', foreign_key: 'arrival_airport_id', dependent: :destroy
    has_many :departure_flights, class_name: 'Flight', foreign_key: 'departure_airport_id', dependent: :destroy

    validates :airport_code, presence: true
    validates :city_name, presence: true
end
