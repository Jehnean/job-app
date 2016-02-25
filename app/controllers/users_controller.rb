class UsersController < ApplicationController

  before_action :logged_in?, only: [:destory, :edit, :show]

  # grab the users
  def index
    # @current_user = current_user
    @users = User.all
    render :index
  end

  def new 
  	@user = User.new
  	render :new
  end

  def create
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to "/users/#{@user.id}" # <-- go to show
    
  end

  def show
    @user = User.find_by_id(params[:id])
    @jobs = Job.all
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :business_name, :email, :password)
  end
  
end
