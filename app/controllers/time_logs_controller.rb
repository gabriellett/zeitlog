class TimeLogsController < ApplicationController
  before_action :set_time_log, only: [:show, :edit, :update, :destroy]

  def index
    @time_logs = TimeLog.all
  end

  def show
  end

  def new
    @time_log = TimeLog.new
  end

  def edit
  end

  def create
    @time_log = TimeLog.new(time_log_params)
    @time_log.save
  end

  def update
    @time_log.update(time_log_params)
  end

  def destroy
    @time_log.destroy
  end

  private
    def set_time_log
      @time_log = TimeLog.find(params[:id])
    end

    def time_log_params
      params.require(:time_log).permit(:project_id, :user_id, :hours)
    end
end
