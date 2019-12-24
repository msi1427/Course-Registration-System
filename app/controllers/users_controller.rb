class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @users = User.order(:role)
  end
  
  def show
  end

  def new
    @users = User.new
  end

  def edit
  end

  # POST /userss
  # POST /userss.json
  def create
    @users = User.new(users_params)

    respond_to do |format|
      if @users.save
        format.html { redirect_to @users, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @users }
      else
        format.html { render :new }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @users.update(users_params)
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @users.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @users = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def users_params
    params.require(:users).permit(:name, :std_id, :department, :semester, :email, :role, :password, :password_confirmation )
  end
  
end