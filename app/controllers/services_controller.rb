class ServicesController < ApplicationController
  before_action :set_service

  def show
    @booking = Booking.new
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end
end
