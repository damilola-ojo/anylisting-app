class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_user, only: [:show, :edit]

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
      params.require(:user).permit(:role)
    end

    def authorize_user
      @user = User.find(params[:id])
      unless current_user.admin?
        unless @user == current_user
        redirect_to root_path, alert: "Unauthorized access"
        end
      end
    end
end
