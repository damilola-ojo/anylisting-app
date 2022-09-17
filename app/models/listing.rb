class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :category
  has_many :amenities
  has_many :reviews
  has_many :reservations

  validates :name, :description, :capacity, presence: true
end
