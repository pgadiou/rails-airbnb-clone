class ServicesController < ApplicationController

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

private

  def service_params
    params.require(:service).permit(:name, :category, :location, :distance, :price)
  end

end


