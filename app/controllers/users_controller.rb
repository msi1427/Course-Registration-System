class UsersController < ApplicationController
  def index
    @users = User.order(:role)
  end
  def new
    @users = User.new
  end
end