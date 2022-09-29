class ListingSavingsController < ApplicationController
  def create
    @listing = Listing.find(params[:listing_id])
    current_user.save(@listing)
    redirect_to @listing, notice: "Listing Saved"
  end

  def destroy
    @listing = ListingSaving.find(params[:id]).listing
    current_user.unsave(@listing)
    redirect_to @listing, notice: "Listing Unsaved"
  end
end
