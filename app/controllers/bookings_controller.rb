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
    @bookings_as_client = current_user.bookings.where.not(latitude: nil, longitude: nil)
    @markers_as_service = @bookings_as_client.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
    @services = current_user.services
    @markers = []
    @services.each do |service|
      @bookings = service.bookings.where.not(latitude: nil, longitude: nil, confirmed: false)
      @markers_service = @bookings.map do |booking|
        {
          lat: booking.latitude,
          lng: booking.longitude,
          infoWindow: { content: booking.date }
        }
      end
      @markers += @markers_service
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.confirmed = params[:booking][:confirmed] == 'true'
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :location)
  end
end
