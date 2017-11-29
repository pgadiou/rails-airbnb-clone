class ServicesController < ApplicationController
  before_action :set_service, only: :show

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :category, :description, :location, :distance, :price, :photo)
  end

end


