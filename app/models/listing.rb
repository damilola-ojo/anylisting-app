class Listing < ApplicationRecord
  has_many :listing_savings
  has_many :savers, through: :listing_saving, source: :user
  belongs_to :owner, class_name: "User", foreign_key: "user_id"

  belongs_to :location
  belongs_to :category
  has_many :amenities
  has_many :reviews

  validates :name, :description, :capacity, presence: true
end
