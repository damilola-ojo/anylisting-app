class Location < ApplicationRecord
  has_many :listings
  belongs_to :category
end
