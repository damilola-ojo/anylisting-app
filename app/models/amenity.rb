class Amenity < ApplicationRecord
  belongs_to :listing

  validates :name, presence: true
end
