class Location < ApplicationRecord
  has_many :listings
  belongs_to :category

  validates :name, presence: true
end
