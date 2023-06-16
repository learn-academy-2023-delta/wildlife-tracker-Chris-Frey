class SightingLogsController < ApplicationController
  def index
    sighting_logs = SightingLog.all
    render json: sighting_logs, include: [:animal, :sighting]
  end

  def show
    sighting_logs = SightingLog.find_by(id: params[:id])
    render json: sighting_logs
  end
end
