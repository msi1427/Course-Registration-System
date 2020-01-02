class RegisteredController < ApplicationController
  before_action :admin_block
  before_action :authenticate_user!
  before_action :check_empty_list
  before_action :user_authenticate

  def admin_block
    if current_user.role=='Admin'
      redirect_to home_page_path
      return false
    else return true
    end
  end

  def index
    @carts = Cart.all
  end

  def check_empty_list
    if current_user.role=='Admin'
      redirect_to home_page_path
      return false
    else return true
    end
  end

  def user_authenticate
    if LineItem.find_by(user_id: current_user.id)
      return true
    else
      respond_to do |format|
        format.html { redirect_to home_page_path, notice: 'You have not yet registered' }
      end
      return false
    end
  end

end

