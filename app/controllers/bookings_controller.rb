class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @service = Service.find(params[:service_id])
    if @booking.save
      redirect_to service_path(@service)
    else
      render 'services/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end
end
