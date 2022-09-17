class ApplicationController < ActionController::Base
  def ordered_listings
    Listing.includes(:category, :location).order(created_at: :desc)
  end
end
