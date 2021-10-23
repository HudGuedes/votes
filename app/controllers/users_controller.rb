class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.exclude_current_user(current_user.id)
  end
end
