class Sighting < ApplicationRecord
    belongs_to :animal
    validates :latitude, :longitude, :date, presence: true
    accepts_nested_attributes_for :animal
end
