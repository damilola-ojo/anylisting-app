class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :show, :update]

  def show
  end

  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to current_user, notice: "Profile was updated successfully"
    else
      render :edit
    end
  end

  private
    def set_user 
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:first_name,
                                   :last_name,
                                   :email)
    end
end
