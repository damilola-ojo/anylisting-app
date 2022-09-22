class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @listings = current_user.listings
  end

  def edit
  end
  
  def update
    if current_user.update(user_params)
      redirect_to current_user, notice: "Profile was updated successfully"
    else
      render :edit
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name,
                                   :last_name,
                                   :email)
    end
end
