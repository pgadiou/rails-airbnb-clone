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

  def index
    @services = current_user.services
    @markers = []
    @services.each do |service|
      @bookings = service.bookings
      @markers_step = @bookings.map do |booking|
        {
          lat: booking.latitude,
          lng: booking.longitude,
          # infoWindow: { content: render_to_string(partial: "/bookings/map_box", locals: { booking: booking }) }
        }
      @markers << @markers_step
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :location)
  end
end
