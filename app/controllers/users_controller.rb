class UsersController < ApplicationController
before_filter :authenticate_user!

  def show
    @user = params[:id].blank? ? current_user : User.find(params[:id])
  end

end
