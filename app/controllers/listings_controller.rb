class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def create
    @listing = Listing.create(listing_params)

    if @listing.save
      ## do some black magic here
    else
      ## do some alternative black magic
    end
  end
  
  def update
    if @listing.update(listing_params)
      # do some blacker magic, lol
    else 
      ## do some other black magic
    end
  end

  def destroy
    @listing.destroy
    ## take me to some place i'd love to be
  end

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:name, :description, :capacity)
    end
end
