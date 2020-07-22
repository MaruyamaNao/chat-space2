class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(params.require(:user).permit(:name, :email))
      redirect_to root_path
    else
      render :edit
    end
  end
end
