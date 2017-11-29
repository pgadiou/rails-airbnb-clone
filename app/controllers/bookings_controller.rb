class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @service = Service.find(params[:service_id])
    @booking.service_id = @service.id
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to service_path(@service)
    else
      render 'services/show'
    end
  end

  def index
    @bookings = Booking.where.not(latitude: nil, longitude: nil)
    @markers = @bookings.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude,
        # infoWindow: { content: render_to_string(partial: "/bookings/map_box", locals: { booking: booking }) }
      }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :location)
  end
end
