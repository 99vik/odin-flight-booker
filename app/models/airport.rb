class Airport < ApplicationRecord
    validates :airport_code, presence: true
    validates :city_name, presence: true
end
