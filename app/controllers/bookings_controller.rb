class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
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
    @bookings = policy_scope(Booking)
    @bookings_as_client = @bookings.where.not(latitude: nil, longitude: nil).where(user: current_user)
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
      @bookings_provider = @bookings.where.not(latitude: nil, longitude: nil).where(confirmed: nil).or(@bookings.where.not(latitude: nil, longitude: nil).where(confirmed: true)).where(service: service)
      @markers_service = @bookings_provider.map do |booking|
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
    authorize @booking
    @booking.confirmed = params[:booking][:confirmed] == 'true'
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :location)
  end
end
