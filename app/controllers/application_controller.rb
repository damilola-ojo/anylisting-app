class ApplicationController < ActionController::Base 
  before_action :configure_permitted_parameters, if: :devise_controller?

  def ordered_listings
    Listing.includes(:category, :location).order(created_at: :desc)
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end
end
