class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    
    if @location.save
      redirect_to root_url
    else
      render :new
    end
  end
end
