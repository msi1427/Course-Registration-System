class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  #before_action :user_authenticate, only: [ :edit]
  before_action :admin_authenticate, only: [ :new, :destroy]
  before_action :user_admin_authenticate, only: [:edit]


  def index
    @users = User.order(:std_id)
  end
  
  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  # POST /userss
  # POST /userss.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :std_id, :department, :semester, :email, :role, :password, :password_confirmation, :avatar )
  end

  def user_authenticate
    if current_user.id == @user.id
      return true
    else
      redirect_to home_page_path
      return false
    end
  end

  def admin_authenticate
    if current_user.role == 'Admin'
      return true
    else
      redirect_to home_page_path
      return false
    end
  end

  def user_admin_authenticate
    if current_user.role == 'Admin' or current_user.id == @user.id
      return true
    else
      redirect_to home_page_path
      return false
    end
  end
  
end