class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    redirect_to store_path unless @user
  end
end
