class User < ApplicationRecord
  has_many :listing_savings

  has_many :saved_listings, 
           through: :listing_savings,
           source: :listing

  has_many :created_listings,
           class_name: "Listing"

  validates :first_name, :last_name, presence: true

  enum role: { user: 0, vip: 1, admin: 2 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
