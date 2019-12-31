class StoreController < ApplicationController
  before_action :authenticate_user!
  before_action :user_authenticate
  before_action :admin_block

  def index
    @course = Course.order(:number)
  end

  def user_authenticate
    if LineItem.find_by(user_id: current_user.id)
      respond_to do |format|
        format.html { redirect_to home_page_path, notice: 'You have already registered' }
      end
      return false
    else
      return true
    end
  end

  def admin_block
    if current_user.role=='Admin'
      redirect_to home_page_path
      return false
    else return true
    end
  end
end
