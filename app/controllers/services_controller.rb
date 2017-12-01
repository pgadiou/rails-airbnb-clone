class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  skip_after_action :verify_authorized, only: :show
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
      @services = Service.all
      @services = policy_scope(Booking)
  end

 def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id
    authorize @service
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def show
    # @location = params[:location]
    @booking = Booking.new
    authorize @service
  end

  def edit
      authorize @service
  end

  def update
    authorize @service
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render :edit
    end
  end

  def destroy
    authorize @service
    @service.destroy
    redirect_to new_service_path
  end

private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :category, :description, :location, :distance, :price, :photo)
  end

end





