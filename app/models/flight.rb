class Flight < ApplicationRecord
    validates :datetime, presence: true
    validates :flight_duration, presence: true
end
