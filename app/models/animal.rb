class Animal < ApplicationRecord
    has_many :sightings
    validates :common_name, :scientific_binomial, presence: true
    validates :common_name, comparison: {other_than: :scientific_binomial}
    validates :common_name, :scientific_binomial, uniqueness: true
    accepts_nested_attributes_for :sightings
end
