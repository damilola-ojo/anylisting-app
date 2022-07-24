class Listing < ApplicationRecord
  validates :name, :description, :capacity, presence: true
end
