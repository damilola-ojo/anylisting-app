class Listing < ApplicationRecord
  belongs_to :location
  belongs_to :category
  has_many :amenities
  has_many :reviews

  validates :name, :description, :capacity, presence: true
end
