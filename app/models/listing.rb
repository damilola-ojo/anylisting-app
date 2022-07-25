class Listing < ApplicationRecord
  has_many :amenities
  has_many :reviews
  validates :name, :description, :capacity, presence: true
end
