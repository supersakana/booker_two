class Airport < ApplicationRecord
  has_many :departing_flights,
           foreign_key: 'from_id',
           class_name: 'Flight',
           dependent: :destroy
  has_many :arriving_flights,
           foreign_key: 'to_id',
           class_name: 'Flight',
           dependent: :destroy
end
