class MainController < ApplicationController
  def index
    @listings = ordered_listings
  end
end
