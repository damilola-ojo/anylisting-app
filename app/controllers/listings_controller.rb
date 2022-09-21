class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @listings = ordered_listings
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end 

  def create
    @listing = current_user
              .listings
              .build(listing_params)

    if @listing.save
      redirect_to root_path, notice: "Listing was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @listing.update(listing_params)
      redirect_to listings_path, notice: "Listing was successfully updated"
    else 
      render :edit
    end
  end

  def destroy
    @listing.destroy
    redirect_to root_url, notice: "Listing was successfully destroyed"
  end

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:name, 
                                      :description, 
                                      :capacity,
                                      :location_id,
                                      :category_id)
    end
end
