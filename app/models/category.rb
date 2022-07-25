class Category < ApplicationRecord
  has_many :listings
  has_many :locations

  validates :name, presence: true
end
