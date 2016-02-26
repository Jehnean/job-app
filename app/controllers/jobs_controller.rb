class JobsController < ApplicationController

	def index
    @jobs = Job.all
    if params[:search]
          @jobs = Job.search(params[:search]).order("title DESC")
        else
          @jobs = Job.order("title DESC")
    end
  end

  def new
    @job = Job.new
  end

  def create
    Job.create(job_params)
    redirect_to user_path(current_user)
  end

  def show 
    @job = Job.find(params[:id])
  end

  def edit 
    @job = Job.find(params[:id])
    id = params[:id]
    render :edit
  end

  def update 
    # save the id paramater from the url
    job_id = params[:id]
    # find the job to update by id
    job = Job.find(job_id)
    # get updated job data from params
    updated_attributes = params.require(:job).permit(:title, :salary, :description, :location, :email)
    # update the job
    job.update_attributes(updated_attributes)
    # redirect to single job show page for this job
    redirect_to job
    # ^ same as redirect_to job_path(job)
    # ^ same as redirect_to "/creatures/#{creature.id}"
  end

  def destroy
    id = params[:id]
    job = Job.find(id)
    job.destroy
    redirect_to user_path(current_user)
  end



  private 

  def job_params
    params.require(:job).permit(:title, :salary, :description, :location, :email, :business_name, :user_id)
  end

end
