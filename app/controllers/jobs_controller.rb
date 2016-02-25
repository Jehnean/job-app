class JobsController < ApplicationController

	def index
    @jobs = Job.all
    render :index
  end

  def new
   
    @job = Job.new
    render :new
  end

  def create
    Job.create(job_params)

    redirect_to user_path(current_user)
  end

  def show 
    @job = Job.find(params[:id])
    render :show
  end

  def edit 
    @job = Job.find(params[:id])
    render :edit
  end

  private 

  def job_params
    params.require(:job).permit(:title, :salary, :description, :location, :email, :business_name, :user_id)
  end

end
