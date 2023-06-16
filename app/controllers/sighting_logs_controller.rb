class SightingLogsController < ApplicationController
  def index
    sighting_logs = SightingLog.all
  end

  def show
    sighting_logs = SightingLog.find_by(id: params[:id])
    render json: sighting_logs
  end


end
