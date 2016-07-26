class PracticeLogController < ApplicationController
  def index
    @entries = PracticeLog.all
  end

  def new
    @entry = PracticeLog.new
  end

  def create
    @entry = PracticeLog.new(log_params)
    @entry.save ? create_success : create_fail
  end

  def show
    @entry = PracticeLog.find(params[:id])
  end

  def edit
    @entry = PracticeLog.find(params[:id])
  end

  def update
    @entry = PracticeLog.find(params[:id])
    @entry.update(log_params) ? edit_success : edit_fail
  end

  def destroy
    @entry = PracticeLog.find(params[:id])
    @entry.destroy
    #flash[:notice] = "Entry deleted"
    redirect_to practice_log_index_path
  end

  private
  def log_params
    params.require(:practice_log).permit([:date, :time_from, :time_to, :practiced])
  end

  def create_success
    #flash[:notice] = "Created new entry"
    redirect_to practice_log_index_path
  end

  def create_fail
    #flash[:alert] = "Failed to create entry"
    render :new
  end

  def edit_success
    #flash[:notice] = "Updated entry"
    redirect_to practice_log_index_path
  end

  def edit_fail
    #flash[:alert] = "Failed to update entry"
    render :edit
  end
end
