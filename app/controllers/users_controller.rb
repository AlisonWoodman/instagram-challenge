class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @users = User.all
    @user = current_user
  end
end
