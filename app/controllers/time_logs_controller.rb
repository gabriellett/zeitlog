class TimeLogsController < ApplicationController
  before_action :set_time_log, only: [:show, :edit, :update, :destroy]

  def index
    @time_logs = TimeLog.all
    respond_with(@time_logs)
  end

  def show
    respond_with(@time_log)
  end

  def new
    @time_log = TimeLog.new
    respond_with(@time_log)
  end

  def edit
  end

  def create
    @time_log = TimeLog.new(time_log_params)
    @time_log.save
    respond_with(@time_log)
  end

  def update
    @time_log.update(time_log_params)
    respond_with(@time_log)
  end

  def destroy
    @time_log.destroy
    respond_with(@time_log)
  end

  private
    def set_time_log
      @time_log = TimeLog.find(params[:id])
    end

    def time_log_params
      params.require(:time_log).permit(:project_id, :user_id, :hours)
    end
end
