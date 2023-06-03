class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: 'Airport'
    belongs_to :arrival_airport, class_name: 'Airport'
    
    has_many :bookings
    
    validates :datetime, presence: true
    validates :flight_duration, presence: true
end
