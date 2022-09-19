class Location < ApplicationRecord
  has_many :listings, dependent: :destroy
  belongs_to :category

  validates :name, presence: true
end
