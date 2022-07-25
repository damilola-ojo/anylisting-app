class Listing < ApplicationRecord
  belongs_to :location
  has_many :amenities
  has_many :reviews

  validates :name, :description, :capacity, presence: true
end
